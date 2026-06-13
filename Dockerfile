FROM debian:bookworm
LABEL maintainer="android-dev-env"

# 基础环境变量
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh \
    LC_ALL=zh_CN.UTF-8 \
    TZ=Asia/Shanghai \
    JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 \
    ANDROID_HOME=/opt/android-sdk \
    ANDROID_SDK_ROOT=/opt/android-sdk \
    NDK_VERSION=25.2.9519653 \
    BUILD_TOOLS_VERSION=34.0.0 \
    PLATFORM_VERSION=android-34 \
    PATH=$PATH:$JAVA_HOME/bin:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/ndk/25.2.9519653

WORKDIR /root/workspace

# 1. 替换为阿里云软件源 + 开启i386架构（安卓SDK依赖32位库）
RUN echo "deb http://mirrors.aliyun.com/debian/ bookworm main non-free non-free-firmware contrib" > /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian/ bookworm main non-free non-free-firmware contrib" >> /etc/apt/sources.list && \
    echo "deb http://mirrors.aliyun.com/debian-security/ bookworm-security main" >> /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian-security/ bookworm-security main" >> /etc/apt/sources.list && \
    echo "deb http://mirrors.aliyun.com/debian/ bookworm-updates main non-free non-free-firmware contrib" >> /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian/ bookworm-updates main non-free non-free-firmware contrib" >> /etc/apt/sources.list && \
    echo "deb http://mirrors.aliyun.com/debian/ bookworm-backports main non-free non-free-firmware contrib" >> /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian/ bookworm-backports main non-free non-free-firmware contrib" >> /etc/apt/sources.list && \
    dpkg --add-architecture i386

# 2. 安装基础依赖 + 中文环境 + Java + SSH + 工具链
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        locales tzdata fonts-wqy-microhei \
        openssh-server openjdk-17-jdk \
        wget curl unzip git vim nano supervisor \
        libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 \
        ca-certificates build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 3. 配置中文locale与时区
RUN echo "zh_CN.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=zh_CN.UTF-8 && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

# 4. 配置SSH服务（允许root密码登录，默认密码123456）
RUN mkdir -p /run/sshd && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config && \
    echo "root:123456" | chpasswd

# 5. 安装Android SDK命令行工具 + 核心组件
RUN mkdir -p $ANDROID_HOME/cmdline-tools && \
    wget -q https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O /tmp/cmdline-tools.zip && \
    unzip -q /tmp/cmdline-tools.zip -d $ANDROID_HOME/cmdline-tools && \
    mv $ANDROID_HOME/cmdline-tools/cmdline-tools $ANDROID_HOME/cmdline-tools/latest && \
    rm /tmp/cmdline-tools.zip && \
    yes | sdkmanager --licenses && \
    sdkmanager "platform-tools" "build-tools;${BUILD_TOOLS_VERSION}" "platforms;${PLATFORM_VERSION}" "ndk;${NDK_VERSION}" "sources;${PLATFORM_VERSION}"

# 6. 安装code-server + 中文语言包 + Java开发插件
RUN curl -fsSL https://code-server.dev/install.sh | sh && \
    code-server --install-extension MS-CEINTL.vscode-language-pack-zh-hans && \
    code-server --install-extension vscjava.vscode-java-pack && \
    code-server --install-extension GoogleCloudTools.cloudcode

# 7. 配置Supervisor管理多服务
RUN mkdir -p /etc/supervisor/conf.d

# SSH服务配置
RUN echo "[program:sshd]" > /etc/supervisor/conf.d/sshd.conf && \
    echo "command=/usr/sbin/sshd -D" >> /etc/supervisor/conf.d/sshd.conf && \
    echo "autostart=true" >> /etc/supervisor/conf.d/sshd.conf && \
    echo "autorestart=true" >> /etc/supervisor/conf.d/sshd.conf && \
    echo "priority=10" >> /etc/supervisor/conf.d/sshd.conf

# code-server服务配置（默认密码123456，监听0.0.0.0:8080）
RUN echo "[program:code-server]" > /etc/supervisor/conf.d/code-server.conf && \
    echo "command=/usr/bin/code-server --bind-addr 0.0.0.0:8080 --auth password --disable-telemetry /root/workspace" >> /etc/supervisor/conf.d/code-server.conf && \
    echo "environment=PASSWORD=\"123456\"" >> /etc/supervisor/conf.d/code-server.conf && \
    echo "autostart=true" >> /etc/supervisor/conf.d/code-server.conf && \
    echo "autorestart=true" >> /etc/supervisor/conf.d/code-server.conf && \
    echo "priority=20" >> /etc/supervisor/conf.d/code-server.conf

# 暴露端口：22(SSH)、8080(code-server)
EXPOSE 22 8080

# 启动入口：Supervisor托管所有服务
CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]

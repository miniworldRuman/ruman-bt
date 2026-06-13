FROM debian:bookworm-slim

# ========== 基础环境变量 ==========
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8
ENV TZ=Asia/Shanghai

# ========== 1. 系统基础 & 中文环境 ==========
RUN apt-get update && apt-get install -y \
    locales \
    tzdata \
    curl \
    wget \
    git \
    openssh-client \
    unzip \
    zip \
    ca-certificates \
    gnupg \
    lsb-release \
    sudo \
    procps \
    net-tools \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i '/zh_CN.UTF-8/s/^# //g' /etc/locale.gen \
    && locale-gen zh_CN.UTF-8 \
    && update-locale LANG=zh_CN.UTF-8

# ========== 2. Java（Android 推荐 JDK 17） ==========
RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# ========== 3. .NET SDK（官方源，国外机器） ==========
RUN wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install -y dotnet-sdk-8.0 \
    && rm -rf /var/lib/apt/lists/*

# ========== 4. Android SDK（命令行工具） ==========
ENV ANDROID_HOME=/opt/android-sdk
ENV PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH

RUN mkdir -p ${ANDROID_HOME}/cmdline-tools \
    && cd /tmp \
    && wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip \
    && unzip commandlinetools-linux-*.zip -d ${ANDROID_HOME}/cmdline-tools \
    && mv ${ANDROID_HOME}/cmdline-tools/cmdline-tools ${ANDROID_HOME}/cmdline-tools/latest \
    && rm -f commandlinetools-linux-*.zip

# 预接受 license（非交互）
RUN yes | sdkmanager --licenses || true

# 常用 Android 构建组件
RUN sdkmanager "platform-tools" \
    "platforms;android-34" \
    "build-tools;34.0.0" \
    "ndk;26.1.10909125"

# ========== 5. code-server（VS Code Web） ==========
RUN curl -fsSL https://code-server.dev/install.sh | sh

# 中文语言包（code-server 内安装）
RUN code-server --install-extension MS-CEINTL.vscode-language-pack-zh-hans

# ========== 6. 创建非 root 用户 ==========
RUN useradd -m -s /bin/bash dev \
    && echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER dev
WORKDIR /home/dev

# ========== 7. 启动 code-server ==========
EXPOSE 8080

ENTRYPOINT ["code-server", "--bind-addr=0.0.0.0:8080", "--auth=none"]

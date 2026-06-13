FROM debian:bookworm-slim

# ========== 基础 ==========
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8
ENV TZ=Asia/Shanghai

# ========== 1. 系统 + OpenSSH ==========
RUN apt-get update && apt-get install -y \
    locales \
    tzdata \
    curl \
    wget \
    git \
    openssh-client \
    openssh-server \
    unzip \
    zip \
    ca-certificates \
    gnupg \
    sudo \
    procps \
    net-tools \
    vim \
    && rm -rf /var/lib/apt/lists/*

# 中文环境
RUN sed -i '/zh_CN.UTF-8/s/^# //g' /etc/locale.gen \
    && locale-gen zh_CN.UTF-8 \
    && update-locale LANG=zh_CN.UTF-8

# SSH 配置
RUN mkdir /var/run/sshd
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

# 设置 root 密码（⚠️ 生产环境请改成密钥）
RUN echo 'root:dev123456' | chpasswd

# ========== 2. Java（Android） ==========
RUN apt-get update && apt-get install -y openjdk-17-jdk \
    && rm -rf /var/lib/apt/lists/*
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# ========== 3. .NET SDK ==========
RUN wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install -y dotnet-sdk-8.0 \
    && rm -rf /var/lib/apt/lists/*

# ========== 4. Android SDK ==========
ENV ANDROID_HOME=/opt/android-sdk
ENV PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH

RUN mkdir -p ${ANDROID_HOME}/cmdline-tools \
    && cd /tmp \
    && wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip \
    && unzip commandlinetools-linux-*.zip -d ${ANDROID_HOME}/cmdline-tools \
    && mv ${ANDROID_HOME}/cmdline-tools/cmdline-tools ${ANDROID_HOME}/cmdline-tools/latest \
    && rm -f commandlinetools-linux-*.zip

RUN yes | sdkmanager --licenses || true
RUN sdkmanager "platform-tools" \
    "platforms;android-34" \
    "build-tools;34.0.0"

# ========== 5. code-server ==========
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN code-server --install-extension MS-CEINTL.vscode-language-pack-zh-hans

# ========== 6. 用户 ==========
RUN useradd -m -s /bin/bash dev \
    && echo "dev:dev123456" | chpasswd \
    && echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER dev
WORKDIR /home/dev

# ========== 7. 端口 ==========
EXPOSE 22 8080

# ========== 8. 启动 SSH + code-server ==========
COPY entrypoint.sh /entrypoint.sh
RUN sudo chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

# ---------- 基础镜像 ----------
FROM debian:bookworm

# ---------- 环境变量 ----------
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=zh_CN.UTF-8
ENV LANGUAGE=zh_CN:zh
ENV LC_ALL=zh_CN.UTF-8
ENV ANDROID_HOME=/opt/android-sdk
ENV PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH

# ---------- APT 源（国外机器，用官方源最快） ----------
RUN sed -i 's|deb.debian.org|deb.debian.org|g' /etc/apt/sources.list \
 && apt-get update && apt-get upgrade -y

# ---------- 基础系统 + 中文 ----------
RUN apt-get install -y \
    locales \
    tzdata \
    curl \
    wget \
    git \
    unzip \
    zip \
    ca-certificates \
    gnupg \
    software-properties-common \
    build-essential \
    lib32stdc++6 \
    lib32z1 \
    openjdk-17-jdk \
    fonts-noto-cjk \
    sudo \
    vim \
    net-tools \
    iputils-ping \
 && rm -rf /var/lib/apt/lists/*

# 中文 locale
RUN echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen \
 && locale-gen zh_CN.UTF-8

# ---------- OpenSSH ----------
RUN apt-get update && apt-get install -y openssh-server \
 && mkdir /var/run/sshd \
 && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

# ---------- code-server ----------
RUN curl -fsSL https://code-server.dev/install.sh | sh

# ---------- Android SDK ----------
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools \
 && cd ${ANDROID_HOME}/cmdline-tools \
 && wget -q https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip \
 && unzip commandlinetools-linux-*.zip \
 && mv cmdline-tools latest \
 && rm *.zip

# SDK 必备包
RUN yes | sdkmanager --licenses \
 && sdkmanager "platform-tools" "build-tools;34.0.0" "platforms;android-34"

# ---------- 创建普通用户（推荐） ----------
ARG USERNAME=dev
ARG UID=1000
ARG GID=1000

RUN groupadd --gid $GID $USERNAME \
 && useradd --uid $UID --gid $GID --create-home --shell /bin/bash $USERNAME \
 && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME

# ---------- code-server 中文 ----------
RUN mkdir -p /home/$USERNAME/.local/share/code-server/User \
 && echo '{ "locale": "zh-cn" }' > /home/$USERNAME/.local/share/code-server/User/settings.json

# ---------- 暴露端口 ----------
EXPOSE 22 8080

# ---------- 启动脚本 ----------
COPY <<EOF /usr/local/bin/entrypoint.sh
#!/bin/bash
service ssh start
exec code-server --bind-addr 0.0.0.0:8080 --auth none
EOF

RUN chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /workspace
USER $USERNAME

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

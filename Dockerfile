FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh \
    LC_ALL=zh_CN.UTF-8 \
    TZ=Asia/Shanghai


    
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    openssh-server \
    sudo \
    ca-certificates \
    gnupg \
    locales \
    fonts-noto-cjk \
    build-essential \
    python3 \
    python3-pip \
    nodejs \
    npm \
    # MinGW-w64
    mingw-w64 \
    gdb \
    cmake \
    ninja-build \
    # C/C++ 工具链（不用 cpptools）
    clangd \
    clang-format \
    && rm -rf /var/lib/apt/lists/*

# 中文 locale
RUN echo "zh_CN.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen zh_CN.UTF-8 \
    && update-locale LANG=zh_CN.UTF-8

# 时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 安装 code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# 创建用户
ARG USERNAME=dev
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m -s /bin/bash $USERNAME \
    && echo "$USERNAME ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# SSH
RUN mkdir -p /var/run/sshd \
    && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

RUN echo "root:dev123" | chpasswd \
    && echo "$USERNAME:dev123" | chpasswd

USER $USERNAME
WORKDIR /home/$USERNAME

RUN mkdir -p .config/code-server .local/share/code-server/extensions workspace

# code-server 配置（中文）
RUN echo '{\n\
  "auth": "password",\n\
  "password": "dev123",\n\
  "cert": false,\n\
  "locale": "zh-cn"\n\
}' > .config/code-server/config.yaml

# ✅ 只安装中文语言包（Open VSX 可用）
RUN code-server --install-extension MS-CEINTL.vscode-language-pack-zh-hans || true

USER root
EXPOSE 22 8080

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

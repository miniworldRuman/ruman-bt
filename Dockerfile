# 使用 Debian Stable 作为基础镜像
FROM debian:bookworm-slim

# 设置环境变量（避免交互式配置）
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh \
    LC_ALL=zh_CN.UTF-8 \
    TZ=Asia/Shanghai

# 更换国内镜像源（可选，加速下载）
RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list

# 安装基础工具和中文语言支持
RUN apt-get update && apt-get install -y \
    # 基础工具
    curl \
    wget \
    git \
    openssh-server \
    sudo \
    ca-certificates \
    gnupg \
    # 中文语言支持
    locales \
    fonts-noto-cjk \
    # 开发工具
    build-essential \
    python3 \
    python3-pip \
    nodejs \
    npm \
    # ============ 新增：MinGW-w64 ============
    mingw-w64 \
    gdb \
    cmake \
    ninja-build \
    # =======================================
    # 清理缓存
    && rm -rf /var/lib/apt/lists/*

# 配置中文 locale
RUN echo "zh_CN.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen zh_CN.UTF-8 && \
    update-locale LANG=zh_CN.UTF-8

# 配置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 安装 code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# 创建非 root 用户（推荐做法）
ARG USERNAME=dev
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m -s /bin/bash $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# 配置 SSH
RUN mkdir -p /var/run/sshd \
    && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# 设置默认密码（建议运行时覆盖）
RUN echo "root:dev123" | chpasswd \
    && echo "$USERNAME:dev123" | chpasswd

# 创建 code-server 配置目录并设置权限
USER $USERNAME
WORKDIR /home/$USERNAME

RUN mkdir -p /home/$USERNAME/.config/code-server \
    && mkdir -p /home/$USERNAME/.local/share/code-server/extensions \
    && mkdir -p /home/$USERNAME/workspace

# 配置 code-server 为中文
RUN echo '{\n\
  "auth": "password",\n\
  "password": "dev123",\n\
  "cert": false,\n\
  "locale": "zh-cn"\n\
}' > /home/$USERNAME/.config/code-server/config.yaml

# 安装中文语言包和 C/C++ 扩展
RUN code-server --install-extension MS-CEINTL.vscode-language-pack-zh-hans \
    && code-server --install-extension ms-vscode.cpptools

# 配置 MinGW-w64 环境变量（针对非root用户）
RUN echo '\n# MinGW-w64 配置\n\
export PATH=/usr/bin:$PATH\n\
alias x86_64-w64-mingw32-gcc="x86_64-w64-mingw32-gcc-posix"\n\
alias x86_64-w64-mingw32-g++="x86_64-w64-mingw32-g++-posix"\n\
alias i686-w64-mingw32-gcc="i686-w64-mingw32-gcc-posix"\n\
alias i686-w64-mingw32-g++="i686-w64-mingw32-g++-posix"' >> /home/$USERNAME/.bashrc

# 切换回 root 用户以便启动服务
USER root

# 暴露端口
EXPOSE 22 8080

# 启动脚本
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

# =============================================================================
# 基于 Debian 的开发环境 Dockerfile
# 包含: code-server, OpenSSH, Node.js, npm, Python, pip, opencode
# 支持中文界面
# =============================================================================

FROM debian:bookworm-slim

LABEL maintainer="dev"
LABEL description="Debian-based development environment with code-server, SSH, Node.js, Python, and Chinese locale support"

# =============================================================================
# 环境变量
# =============================================================================
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Shanghai \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh:en_US:en \
    LC_ALL=zh_CN.UTF-8 \
    NODE_VERSION=20.x \
    CODE_SERVER_VERSION=4.89.1 \
    PYTHON_VERSION=3.11 \
    OPENCODE_VERSION=latest

# =============================================================================
# 安装基础依赖、中文语言包和字体
# =============================================================================
RUN apt-get update && apt-get install -y --no-install-recommends \
    # 基础工具
    ca-certificates \
    curl \
    wget \
    git \
    vim \
    nano \
    htop \
    tree \
    sudo \
    procps \
    net-tools \
    iputils-ping \
    dnsutils \
    # 中文语言支持
    locales \
    locales-all \
    # 中文字体
    fonts-noto-cjk \
    fonts-wqy-zenhei \
    fonts-wqy-microhei \
    # 构建依赖
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev \
    # OpenSSH 服务器
    openssh-server \
    # Python 依赖
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
    # 其他常用工具
    unzip \
    zip \
    jq \
    && rm -rf /var/lib/apt/lists/*

# =============================================================================
# 配置中文 locale
# =============================================================================
RUN locale-gen zh_CN.UTF-8 && \
    update-locale LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8

# =============================================================================
# 配置时区
# =============================================================================
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

# =============================================================================
# 安装 Node.js 和 npm
# =============================================================================
RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION} | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

# 验证 Node.js 和 npm 安装
RUN node --version && npm --version

# 配置 npm 使用淘宝镜像（可选，加速国内下载）
RUN npm config set registry https://registry.npmmirror.com || true

# =============================================================================
# 安装 code-server
# =============================================================================
RUN curl -fsSL https://code-server.dev/install.sh | sh -s -- --version=${CODE_SERVER_VERSION} && \
    rm -rf /var/lib/apt/lists/*

# 创建 code-server 配置目录
RUN mkdir -p /root/.config/code-server

# code-server 默认配置（允许无密码访问，可根据需要修改）
RUN echo 'bind-addr: 0.0.0.0:8080\nauth: password\npassword: devpassword\ncert: false\nlocale: zh-CN' > /root/.config/code-server/config.yaml

# =============================================================================
# 安装 opencode (假设为 npm 包 opencode 或从 GitHub 安装)
# 如果 opencode 是其他安装方式，请根据实际情况调整
# =============================================================================
RUN npm install -g opencode 2>/dev/null || \
    (echo "opencode npm package not found, skipping npm install" && \
     mkdir -p /opt/opencode)

# 如果 opencode 需要从 GitHub 安装，取消下面注释：
# RUN wget -q https://github.com/opencode-ai/opencode/releases/download/${OPENCODE_VERSION}/opencode-linux-amd64 -O /usr/local/bin/opencode && \
#     chmod +x /usr/local/bin/opencode

# =============================================================================
# 配置 OpenSSH 服务器
# =============================================================================
RUN mkdir -p /var/run/sshd && \
    mkdir -p /root/.ssh && \
    chmod 700 /root/.ssh

# SSH 配置：允许 root 登录（开发环境使用，生产环境建议禁用）
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    echo "root:devpassword" | chpasswd

# =============================================================================
# 配置 Python pip 使用国内镜像（可选，加速国内下载）
# =============================================================================
RUN pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple 2>/dev/null || true && \
    pip3 install --upgrade pip setuptools wheel

# 常用 Python 包
RUN pip3 install --no-cache-dir \
    requests \
    numpy \
    pandas \
    flask \
    django \
    jupyter \
    ipython \
    black \
    pylint \
    pytest

# =============================================================================
# 安装 code-server 中文语言包和常用扩展
# =============================================================================
RUN code-server --install-extension MS-CEINTL.vscode-language-pack-zh-hans 2>/dev/null || true && \
    code-server --install-extension ms-python.python 2>/dev/null || true && \
    code-server --install-extension ms-toolsai.jupyter 2>/dev/null || true && \
    code-server --install-extension dbaeumer.vscode-eslint 2>/dev/null || true && \
    code-server --install-extension esbenp.prettier-vscode 2>/dev/null || true

# =============================================================================
# 设置 VS Code 中文界面（通过 settings.json）
# =============================================================================
RUN mkdir -p /root/.local/share/code-server/User && \
    echo '{\n  "locale": "zh-cn",\n  "workbench.colorTheme": "Default Dark+",\n  "editor.fontFamily": "'\''WenQuanYi Zen Hei'\'', '\''Noto Sans CJK SC'\'', '\''Courier New'\'', monospace",\n  "terminal.integrated.defaultProfile.linux": "bash"\n}' > /root/.local/share/code-server/User/settings.json

# =============================================================================
# 工作目录
# =============================================================================
WORKDIR /workspace

# =============================================================================
# 暴露端口
# =============================================================================
# 8080: code-server
# 22:   SSH
EXPOSE 8080 22

# =============================================================================
# 启动脚本
# =============================================================================
RUN echo '#!/bin/bash\n\
echo "========================================"\n\
echo "  开发环境已启动"\n\
echo "========================================"\n\
echo ""\n\
echo "  code-server: http://localhost:8080"\n\
echo "  SSH:         localhost:22"\n\
echo ""\n\
echo "  默认密码: devpassword"\n\
echo "========================================"\n\
echo ""\n\
# 启动 SSH 服务\n\
/usr/sbin/sshd\n\
# 启动 code-server\n\
code-server --bind-addr 0.0.0.0:8080 --auth password --password devpassword /workspace\n\
' > /start.sh && chmod +x /start.sh

# =============================================================================
# 启动命令
# =============================================================================
CMD ["/start.sh"]

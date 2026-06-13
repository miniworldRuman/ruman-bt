# ─────────────────────────────────────────────
# 基础镜像
# ─────────────────────────────────────────────
FROM debian:12

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh:en \
    LC_ALL=zh_CN.UTF-8 \
    WINE_PREFIX=/usr/local/wine-src

# ─────────────────────────────────────────────
# 1) 基础系统 & 中文 locale & 中文字体
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        wget \
        gnupg2 \
        locales \
        tzdata \
    && \
    # 启用 zh_CN.UTF-8
    sed -i 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen zh_CN.UTF-8 && \
    update-locale LANG=zh_CN.UTF-8 && \
    # 中文字体（不换源也能拉到，就是慢点）
    apt-get install -y --no-install-recommends \
        fonts-noto-cjk \
        fonts-noto-cjk-extra \
        fonts-wqy-zenhei \
        fonts-wqy-microhei \
        fonts-arphic-uming \
    && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# ─────────────────────────────────────────────
# 2) Git + OpenSSH
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
        openssh-server \
        sudo \
        passwd \
    && \
    # SSH 基础配置：允许 root 密码/密钥登录（按你需求改）
    sed -i 's/^#*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    mkdir -p /run/sshd && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# ─────────────────────────────────────────────
# 3) TigerVNC + D-Bus(X11 session 必需品) + xauth
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        tigervnc-standalone-server \
        tigervnc-common \
        dbus-x11 \
        xauth \
        x11-utils \
        # 一个轻量窗口管理器做 fallback（可选但很实用）
        openbox \
    && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# ─────────────────────────────────────────────
# 4) KDE Plasma Desktop + 中文语言包
#    ⚠ kde-plasma-desktop 会拉很多包，不换源 + 不考虑体积 → 让它跑完
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        kde-plasma-desktop \
        kde-l10n-zhcn \
        sddm \
        # 让 Qt/KDE 找到中文字体
        fonts-hack \
        breeze-icon-theme \
    && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# ─────────────────────────────────────────────
# 5) 创建普通用户（VNC / KDE 不建议全程 root）
# ─────────────────────────────────────────────
RUN useradd -m -s /bin/bash -G sudo,video,render kdeuser && \
    echo "kdeuser:kdepass" | chpasswd && \
    echo "root:rootpass"   | chpasswd && \
    # sudo 免密（容器场景方便，生产请去掉）
    echo "kdeuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# VNC 密码目录（默认密码: vncpass — 进去后自己 vncpasswd 改）
RUN mkdir -p /home/kdeuser/.vnc && \
    echo -n "vncpass" | vncpasswd -f > /home/kdeuser/.vnc/passwd && \
    chmod 600 /home/kdeuser/.vnc/passwd && \
    chown -R kdeuser:kdeuser /home/kdeuser/.vnc

# VNC xstartup —— 启动 KDE (startplasma-x11)
RUN printf '%s\n' \
    '#!/bin/sh' \
    'unset SESSION_MANAGER' \
    'unset DBUS_SESSION_BUS_ADDRESS' \
    'export LANG=zh_CN.UTF-8' \
    'export LANGUAGE=zh_CN:zh:en' \
    'export LC_ALL=zh_CN.UTF-8' \
    'export XDG_CURRENT_DESKTOP=KDE' \
    'export XDG_SESSION_TYPE=x11' \
    'eval "$(dbus-launch --sh-syntax)"' \
    'exec startplasma-x11 &' \
    > /home/kdeuser/.vnc/xstartup && \
    chmod +x /home/kdeuser/.vnc/xstartup && \
    chown kdeuser:kdeuser /home/kdeuser/.vnc/xstartup

# ─────────────────────────────────────────────
# 6) code-server（官方 install.sh → 自动选 deb 包）
# ─────────────────────────────────────────────
RUN curl -fsSL https://code-server.dev/install.sh | sh

# code-server 默认监听 127.0.0.1:8080，改成 0.0.0.0 以便容器外访问
RUN mkdir -p /home/kdeuser/.config/code-server && \
    printf 'bind-addr: 0.0.0.0:8080\nauth: password\npassword: codepass\ncert: false\n' \
      > /home/kdeuser/.config/code-server/config.yaml && \
    chown -R kdeuser:kdeuser /home/kdeuser/.config

# ─────────────────────────────────────────────
# 7) Wine 11.0 —— 从官方源码 tar.xz 编译安装
#    https://dl.winehq.org/wine/source/11.0/wine-11.0.tar.xz
#    ⚠ 这一步是整份 Dockerfile 最耗时的（取决于 CPU）
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        # ── 编译工具 ──
        build-essential \
        flex \
        bison \
        gcc \
        g++ \
        make \
        pkg-config \
        # WoW64 / 32-bit 兼容层需要的 multilib
        gcc-multilib \
        g++-multilib \
        # ── X11 / 图形 ──
        libx11-dev \
        libx11-dev:i386 \
        libxext-dev \
        libxext-dev:i386 \
        libxrender-dev \
        libxrender-dev:i386 \
        libxfixes-dev \
        libxfixes-dev:i386 \
        libxcomposite-dev \
        libxcomposite-dev:i386 \
        libxcursor-dev \
        libxcursor-dev:i386 \
        libxi-dev \
        libxi-dev:i386 \
        libxrandr-dev \
        libxrandr-dev:i386 \
        libxinerama-dev \
        libxinerama-dev:i386 \
        libxxf86vm-dev \
        libxxf86vm-dev:i386 \
        libglu1-mesa-dev \
        libglu1-mesa-dev:i386 \
        libgl1-mesa-dev \
        libgl1-mesa-dev:i386 \
        libwayland-dev \
        # ── 字体 / 文本 ──
        libfreetype-dev \
        libfreetype-dev:i386 \
        libfontconfig1-dev \
        libfontconfig1-dev:i386 \
        # ── 加密 / 网络 ──
        libgnutls28-dev \
        libgnutls28-dev:i386 \
        libssl-dev \
        libssl-dev:i386 \
        # ── D-Bus / 音频 / 媒体 ──
        libdbus-1-dev \
        libpulse-dev \
        libasound2-dev \
        # ── 其他常用依赖 ──
        libjpeg-dev \
        libjpeg-dev:i386 \
        libpng-dev \
        libpng-dev:i386 \
        libtiff-dev \
        libtiff-dev:i386 \
        libmpg123-dev \
        libmpg123-dev:i386 \
        libvulkan-dev \
        libvulkan-dev:i386 \
        libsdl2-dev \
        libsdl2-dev:i386 \
        libunwind-dev \
        libxml2-dev \
        libxml2-dev:i386 \
        libxslt1-dev \
        libgstreamer1.0-dev \
        libgstreamer-plugins-base1.0-dev \
        # ── 下载工具 ──
        xz-utils \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 下载 & 编译 & 安装 Wine 11.0
RUN mkdir -p ${WINE_PREFIX} && cd ${WINE_PREFIX} && \
    wget -q https://dl.winehq.org/wine/source/11.0/wine-11.0.tar.xz && \
    tar xf wine-11.0.tar.xz && \
    mkdir -p ${WINE_PREFIX}/wine-11.0-build && \
    cd ${WINE_PREFIX}/wine-11.0-build && \
    # Wine 11.0 的新 WoW64 架构：一次 configure 即可（含 32-bit via Wow64）
    ../wine-11.0/configure \
        --enable-win64 \
        --prefix=/opt/wine-11.0 \
    && make -j$(nproc) \
    && make install \
    && \
    # 建软链让 wine/wineserver 进 PATH
    ln -sf /opt/wine-11.0/bin/wine     /usr/local/bin/wine     && \
    ln -sf /opt/wine-11.0/bin/wine64   /usr/local/bin/wine64   && \
    ln -sf /opt/wine-11.0/bin/wineserver /usr/local/bin/wineserver && \
    # 清理源码（可选——你说不考虑体积，但你也可以留着）
    rm -rf ${WINE_PREFIX}/wine-11.0.tar.xz

# ─────────────────────────────────────────────
# 8) 入口脚本：启动 sshd + (可选)VNC + 留 shell
# ─────────────────────────────────────────────
RUN printf '%s\n' \
    '#!/bin/bash' \
    'set -e' \
    'echo "==> Starting sshd..."' \
    '/usr/sbin/sshd -D &' \
    'echo "==> SSH up.  VNC @ :1 (port 5901).  code-server @ 0.0.0.0:8080"' \
    'echo "    VNC connect:  vncviewer <container-ip>:1   (pass: vncpass)"' \
    'echo "    code-server:  http://<container-ip>:8080    (pass: codepass)"' \
    'echo ""' \
    '# 默认以 kdeuser 启动 VNC（display :1）' \
    'su - kdeuser -c "vncserver :1 -geometry 1920x1080 -depth 24" &' \
    '# 启动 code-server（也可手动 su - kdeuser -c "code-server"）' \
    'su - kdeuser -c "code-server &"' \
    '# 前台挂住' \
    'wait' \
    > /entrypoint.sh \
    && chmod +x /entrypoint.sh

EXPOSE 22 5901 6080 8080

ENTRYPOINT ["/entrypoint.sh"]

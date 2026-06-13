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
# 0) 启用 i386（Wine / multilib 必需）
# ─────────────────────────────────────────────
RUN dpkg --add-architecture i386

# ─────────────────────────────────────────────
# 1) 基础系统 + 中文 locale + 中文字体
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        wget \
        gnupg2 \
        locales \
        tzdata \
    && sed -i 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/' /etc/locale.gen \
    && locale-gen zh_CN.UTF-8 \
    && update-locale LANG=zh_CN.UTF-8 \
    && apt-get install -y --no-install-recommends \
        fonts-noto-cjk \
        fonts-noto-cjk-extra \
        fonts-wqy-zenhei \
        fonts-wqy-microhei \
        fonts-arphic-uming \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
# ─────────────────────────────────────────────
# 2) Git + OpenSSH
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
        openssh-server \
        sudo \
        passwd \
    && sed -i 's/^#*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && mkdir -p /run/sshd \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# ─────────────────────────────────────────────
# 3) TigerVNC + X11 基础（不自启）
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        tigervnc-standalone-server \
        tigervnc-common \
        dbus-x11 \
        xauth \
        x11-utils \
        openbox \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# ─────────────────────────────────────────────
# 4) KDE Plasma Desktop + 中文（Debian 12 正确方式）
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        kde-plasma-desktop \
        plasma-desktop-data \
        sddm \
        fonts-hack \
        breeze-icon-theme \
        libkf5config-data \
        libkf5i18n-data \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# ─────────────────────────────────────────────
# 5) 创建普通用户
# ─────────────────────────────────────────────
RUN useradd -m -s /bin/bash -G sudo,video,render kdeuser \
    && echo "kdeuser:kdepass" | chpasswd \
    && echo "root:rootpass"   | chpasswd \
    && echo "kdeuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# VNC 目录（无密码）
RUN mkdir -p /home/kdeuser/.vnc \
    && chown -R kdeuser:kdeuser /home/kdeuser/.vnc

# ─────────────────────────────────────────────
# 6) code-server
# ─────────────────────────────────────────────
RUN curl -fsSL https://code-server.dev/install.sh | sh

RUN mkdir -p /home/kdeuser/.config/code-server \
    && printf 'bind-addr: 0.0.0.0:8080\nauth: password\npassword: codepass\ncert: false\n' \
       > /home/kdeuser/.config/code-server/config.yaml \
    && chown -R kdeuser:kdeuser /home/kdeuser/.config

# ─────────────────────────────────────────────
# 7) Wine 11.0 源码编译
# ─────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        flex \
        bison \
        gcc \
        g++ \
        make \
        pkg-config \
        gcc-multilib \
        g++-multilib \
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
        libfreetype-dev \
        libfreetype-dev:i386 \
        libfontconfig1-dev \
        libfontconfig1-dev:i386 \
        libgnutls28-dev \
        libgnutls28-dev:i386 \
        libssl-dev \
        libssl-dev:i386 \
        libdbus-1-dev \
        libpulse-dev \
        libasound2-dev \
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
        xz-utils \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ${WINE_PREFIX} \
    && cd ${WINE_PREFIX} \
    && wget -q https://dl.winehq.org/wine/source/11.0/wine-11.0.tar.xz \
    && tar xf wine-11.0.tar.xz \
    && mkdir -p ${WINE_PREFIX}/wine-11.0-build \
    && cd ${WINE_PREFIX}/wine-11.0-build \
    && ../wine-11.0/configure --enable-win64 --prefix=/opt/wine-11.0 \
    && make -j$(nproc) \
    && make install \
    && ln -sf /opt/wine-11.0/bin/wine /usr/local/bin/wine \
    && ln -sf /opt/wine-11.0/bin/wine64 /usr/local/bin/wine64 \
    && ln -sf /opt/wine-11.0/bin/wineserver /usr/local/bin/wineserver \
    && rm -f ${WINE_PREFIX}

# ─────────────────────────────────────────────
# 8) 手动启动 VNC 的脚本
# ─────────────────────────────────────────────
RUN printf '%s\n' \
'#!/bin/sh' \
'DISP=":1"' \
'GEOM="1920x1080"' \
'DEPTH="24"' \
'' \
'echo "==> Starting Xvnc on ${DISP} (no password)..."' \
'rm -f /tmp/.X${DISP#:}-lock /home/kdeuser/.vnc/*${DISP}*.pid' \
'' \
'Xvnc ${DISP} -geometry ${GEOM} -depth ${DEPTH} -SecurityTypes None -localhost no &' \
'' \
'for i in $(seq 1 15); do' \
'  xdpyinfo -display ${DISP} >/dev/null 2>&1 && break' \
'  sleep 1' \
'done' \
'' \
'export DISPLAY=${DISP}' \
'export LANG=zh_CN.UTF-8' \
'export LC_ALL=zh_CN.UTF-8' \
'export XDG_CURRENT_DESKTOP=KDE' \
'export XDG_SESSION_TYPE=x11' \
'' \
'eval "$(dbus-launch --sh-syntax)"' \
'' \
'echo "==> Launching KDE Plasma..."' \
'exec startplasma-x11' \
> /home/kdeuser/start-vnc.sh \
&& chmod +x /home/kdeuser/start-vnc.sh \
&& chown kdeuser:kdeuser /home/kdeuser/start-vnc.sh

# ─────────────────────────────────────────────
# 9) 根目录启动说明
# ─────────────────────────────────────────────
RUN echo '========================================\n\
VNC (KDE Plasma) 未自动启动\n\
\n\
手动启动方式：\n\
  docker exec -it <容器名> bash\n\
  su - kdeuser\n\
  ./start-vnc.sh\n\
\n\
VNC 连接：\n\
  地址: IP:5901\n\
  认证: 无密码\n\
\n\
其他服务：\n\
  SSH      : 22   (root / kdeuser)\n\
  code-server: 8080 (pass: codepass)\n\
\n\
Wine 11.0:\n\
  安装路径: /opt/wine-11.0\n\
  命令: wine / wine64\n\
========================================\n'\
> /start_vnc.txt

# ─────────────────────────────────────────────
# 10) 入口（仅 SSH + code-server）
# ─────────────────────────────────────────────
RUN printf '%s\n' \
'#!/bin/bash' \
'set -e' \
'echo "==> Starting sshd..."' \
'/usr/sbin/sshd -D &' \
'' \
'echo "==> Starting code-server on 0.0.0.0:8080..."' \
'su - kdeuser -c "code-server &"' \
'' \
'echo "==> VNC is NOT auto-started."' \
'echo "==> Read /start_vnc.txt for manual VNC instructions."' \
'' \
'wait' \
> /entrypoint.sh \
&& chmod +x /entrypoint.sh

EXPOSE 22 5901 8080

ENTRYPOINT ["/entrypoint.sh"]

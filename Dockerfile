FROM debian:12
LABEL maintainer="miniworldruman@qq.com"

# ── 避免所有 apt 弹交互框 ──────────────────────────────────────
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8
ENV DISPLAY=:1

ARG VNC_PASS=vncpwd
ARG ROOT_PASS=root

# ── 1. 基础系统：locale / 时区 / sudo ─────────────────────────
RUN apt-get update && apt-get install -y \
        wget curl gnupg2 lsb-release ca-certificates \
        locales tzdata sudo file bzip2 zip unzip \
        apt-transport-https software-properties-common \
    && echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen zh_CN.UTF-8 \
    && update-locale LANG=zh_CN.UTF-8 \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/*

# ── 2. 启用 i386（Wine 32-bit/64-bit 都需要）──────────────────
RUN dpkg --add-architecture i386

# ── 3. 独立添加 WineHQ 官方源 ──────────────────────────────────
RUN mkdir -p /etc/apt/keyrings && \
    wget -qO /etc/apt/keyrings/winehq.key \
        https://dl.winehq.org/wine-builds/winehq.key && \
    echo "deb [signed-by=/etc/apt/keyrings/winehq.key] https://dl.winehq.org/wine-builds/debian bookworm main" \
        > /etc/apt/sources.list.d/winehq.list

# ── 4. 安装主软件栈 ───────────────────────────────────────────
RUN apt-get update && apt-get install -y \
        # Git / SSH
        git openssh-server \
        # X11 + VNC
        tigervnc-standalone-server tigervnc-common \
        dbus-x11 xauth xinit \
        # KDE Plasma 最小桌面
        kde-plasma-desktop sddm \
        # 中文字体（让桌面不至于全方块）
        fonts-noto-cjk fonts-wqy-zenhei fonts-wqy-microhei \
        # 输入法（Fcitx5）
        fcitx5 fcitx5-chinese-addons fcitx5-frontend-gtk3 fcitx5-frontend-qt5 \
        # Wine（官方源，stable 分支；也可换成 winehq-devel / winehq-staging）
        winehq-stable \
    || true  && \
    rm -rf /var/lib/apt/lists/*

# ── 5. Code-Server（VS Code Web）───────────────────────────────
RUN curl -fsSL https://code-server.dev/install.sh | sh

# ── 6. SSH 配置 ───────────────────────────────────────────────
RUN mkdir -p /var/run/sshd && \
    sed -i 's/#\?PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#\?PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    echo "root:${ROOT_PASS}" | chpasswd

# ── 7. VNC 配置 ───────────────────────────────────────────────
# xstartup：启动 Plasma 桌面会话
RUN mkdir -p /root/.vnc && \
    printf '#!/bin/sh\n\
unset SESSION_MANAGER\n\
unset DBUS_SESSION_BUS_ADDRESS\n\
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources\n\
export LANG=zh_CN.UTF-8\n\
export LC_ALL=zh_CN.UTF-8\n\
export GTK_IM_MODULE=fcitx\n\
export QT_IM_MODULE=fcitx\n\
export XMODIFIERS=@im=fcitx\n\
fcitx5 -d &\n\
exec startplasma-x11\n' > /root/.vnc/xstartup && \
    chmod +x /root/.vnc/xstartup

# 设置 VNC 密码（用 expect 免交互；这里用 bash trick）
RUN mkdir -p /root/.vnc && \
    (echo "${VNC_PASS}"; echo "${VNC_PASS}"; echo "n") | tigervncpasswd /root/.vnc/passwd 2>/dev/null || \
    (printf '%s\n%s\nn\n' "${VNC_PASS}" "${VNC_PASS}" | tigervncpasswd -f > /root/.vnc/passwd) || \
    true && chmod 600 /root/.vnc/passwd 2>/dev/null || true

# ── 8. 统一入口脚本 ───────────────────────────────────────────
COPY <<'ENTRY' /entry.sh
#!/bin/bash
set -e

# D-Bus
mkdir -p /run/dbus
dbus-daemon --system --fork 2>/dev/null || true

# SSH
mkdir -p /var/run/sshd
/usr/sbin/sshd

# VNC (:1 → 端口 5901)
mkdir -p /root/.vnc
: ${VNC_GEOM:=1280x800x24}
vncserver :1 -geometry ${VNC_GEOM%%x*}x${VNC_GEOM%x*}x24 -depth 24 -nolisten tcp -localhost no || true

# Code-Server（0.0.0.0 以便容器外访问）
mkdir -p /root/.config/code-server
if [ ! -f /root/.config/code-server/config.yaml ]; then
cat > /root/.config/code-server/config.yaml <<YML
bind-addr: 0.0.0.0:8080
auth: password
password: changeme
cert: false
YML
fi
code-server --bind-addr 0.0.0.0:8080 &
echo ""
echo "=== 服务已启动 ==="
echo "  SSH : ssh root@<host> -p <映射到22>"
echo "  VNC : <host>:5901  (密码见 ARG VNC_PASS，默认 vncpwd)"
echo "  Code: http://<host>:<映射到8080>  (默认密码 changeme)"
tail -f /dev/null
ENTRY
RUN chmod +x /entry.sh

WORKDIR /root
EXPOSE 22 5901 8080

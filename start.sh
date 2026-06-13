#!/bin/bash
set -e

# 启动 SSH 服务
service ssh start

# 切换到开发用户并启动 code-server
su - dev -c "code-server --bind-addr 0.0.0.0:8080 /home/dev/workspace" &
tail -f /dev/null

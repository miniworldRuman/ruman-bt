# 基于 Ubuntu 20.04 镜像  
FROM ubuntu:24.04  
  
# 更新包索引  
RUN apt-get update && apt-get install -y \  
    apt-transport-https \  
    ca-certificates \  
    curl \  
    gnupg-agent \  
    software-properties-common  
  
# 添加 Docker 官方 GPG 密钥  
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -  
  
# 设置 Docker 版本存储库  
RUN add-apt-repository \  
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \  
   $(lsb_release -cs) \  
   stable"  
  
# 再次更新包索引并安装 Docker CE  
RUN apt-get update && apt-get install -y \  
    docker-ce \  
    docker-ce-cli \  
    containerd.io  
  
# 将当前用户添加到 docker 组（这里使用 root 用户，因为容器默认是 root）  
# 注意：在生产环境中，通常不建议以 root 用户运行 Docker  
# 但由于这是 GitHub Actions 环境，我们保持现状  
  
# 容器启动时运行 Docker 守护进程（这通常不推荐，除非你有特殊需求）  
ENTRYPOINT ["dockerd", "-H", "unix:///var/run/docker.sock"]  
  
# 默认命令  
CMD ["bash"]
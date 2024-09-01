# 基于 Ubuntu 20.04 镜像  
FROM ubuntu:20.04  
  
# 更新包索引  
RUN apt-get update && apt-get install -y \  
    apt-transport-https \  
    ca-certificates \  
    curl \  
    gnupg-agent \  
    software-properties-common  
  
# 添加 Docker 官方 GPG 密钥  
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  
  
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
  
# 将当前用户添加到 docker 组  
RUN useradd -ms /bin/bash dockeruser  
RUN usermod -aG docker dockeruser  
  
# 切换到 dockeruser 用户  
USER dockeruser  
  
# 容器启动时运行 Docker 守护进程（注意：这通常不推荐在生产环境中使用）  
ENTRYPOINT ["dockerd", "-H", "unix:///var/run/docker.sock"]  
  
# 如果你需要在容器启动时运行其他服务或脚本，可以在这里设置 CMD 或 ENTRYPOINT  
CMD ["bash"]

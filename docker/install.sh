echo "开始安装docker"
curl -sSL https://get.daocloud.io/docker | sh
curl -fsSL https://get.docker.com/rootless | sh


groupadd docker
gpasswd -a heng docker 
newgrp docker 


echo "开始安装docker"

if type "docker" >/dev/null 2>&1;then
    echo "docker 已安装"
    exit
fi
curl -sSL https://get.daocloud.io/docker | sh

service sshd start

groupadd docker
sudo gpasswd -a heng docker 
sudo newgrp docker 


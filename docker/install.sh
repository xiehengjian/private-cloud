echo "开始安装docker"

if type "docker" >/dev/null 2>&1;then
    echo "docker 已安装"
    exit
fi
curl -sSL https://get.daocloud.io/docker | sh

service docker start

egrep "^docker" /etc/group >& /dev/null
if [ $? -ne 0 ]
then
    groupadd docker
fi

sudo gpasswd -a heng docker 
sudo newgrp docker 


echo "开始安装rke"


if type "rke" >/dev/null 2>&1;then
    echo "rke 已安装"
    exit
fi


# ping -c 1 "google.com"
# if [ $? -eq 0 ]; then
#     echo "使用国际网络"
curl -LO "https://github.com/rancher/rke/releases/download/v1.3.15/rke_linux-amd64" && mv rke_linux-amd64 rke && sudo chmod +x rke && ./rke --version && sudo cp rke /usr/bin/
# else
#     echo "使用国内网络"
# 	curl -fL "https://kinshy-generic.pkg.coding.net/south/study/rke?version=v1.3.15" -o rke && sudo chmod +x rke && ./rke --version && sudo cp rke /usr/bin/
# fi

ssh-keygen
ssh-copy-id heng@127.0.0.1

rke up --config rke.yaml

if [ ! -d "~/.kube" ]; then
mkdir ~/.kube
fi

mv kube_config_rke.yaml ~/.kube/config
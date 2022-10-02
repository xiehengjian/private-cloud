echo "开始安装rke"

ping -c 1 "google.com"
if [ $? -eq 0 ]; then
    echo "使用国际网络"
	curl -LO "https://github.com/rancher/rke/releases/download/v1.3.10/rke_linux-amd64" && mv rke_linux-amd64 rke && chmod +x rke && ./rke --version && cp rke /usr/bin/
else
    echo "使用国内网络"
	curl -fL "https://kinshy-generic.pkg.coding.net/south/study/rke?version=latest" -o rke && chmod +x rke && ./rke --version && cp rke /usr/bin/
fi


rke up --config rke.yaml
mkdir ~/.kube && mv kube_config_rke.yaml ~/.kube/config
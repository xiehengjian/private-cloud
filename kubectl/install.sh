echo "开始安装kubectl"

if type "kubectl" >/dev/null 2>&1;then
    echo "kubectl 已安装"
    exit
fi

ping -c 1 "google.com"
if [ $? -eq 0 ]; then
    echo "使用国际网络"
	curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && chmod +x kubectl && cp kubectl /usr/bin/
else
    echo "使用国内网络"
	curl -fL "https://kinshy-generic.pkg.coding.net/south/study/kubectl?version=latest" -o kubectl && chmod +x kubectl && cp kubectl /usr/bin/
fi



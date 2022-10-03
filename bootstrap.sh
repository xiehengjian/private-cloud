# 检查网络环境
cd basic && sh install.sh && cd ..


ping -c 1 "google.com"
if [ $? -eq 0 ]; then
    echo "使用国际网络"
	export region="i18n"
else
    echo "使用国内网络"
    export region="cn"
fi

cd docker && bash install.sh && cd ..
cd  kubectl && bash install.sh && cd ..
cd rke && bash install.sh && cd ..
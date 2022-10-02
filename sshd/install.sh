echo "开始安装sshd"

# if type "sshd" >/dev/null 2>&1;then
#     echo "sshd 已安装"
#     exit
# fi

sudo apt update
sudo apt install openssh-server -y
service sshd restart 
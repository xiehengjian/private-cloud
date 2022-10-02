sudo apt update

if ! type "ping" >/dev/null 2>&1;then
    sudo apt install iputils-ping -y
fi

if ! type "ifconfig" >/dev/null 2>&1;then
    sudo apt install net-tools -y
fi
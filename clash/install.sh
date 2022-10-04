echo "暂时不会使用安装clash的方式，而是使用端口转发连接到开发机"

docker run -d -v "$PWD/config.yaml:/root/.config/clash/config.yaml" -p 7890:7890 -p 9090:9090 --restart=unless-stopped --name=clash dreamacro/clash
docker run -d -p 8888:80 --restart=unless-stopped --name yacd haishanh/yacd  
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
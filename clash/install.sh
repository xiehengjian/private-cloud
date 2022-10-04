echo "暂时不会使用安装clash的方式，而是使用端口转发连接到开发机"

docker run -d -v "$PWD/config.yaml:/root/.config/clash/config.yaml" -p 7777:7890 -p 9999:9090 --restart=unless-stopped --name=clash dreamacro/clash
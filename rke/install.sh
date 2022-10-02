curl -fL "https://kinshy-generic.pkg.coding.net/south/study/rke?version=latest" -o rke && chmod +x rke && ./rke --version && cp rke /usr/bin/

rke up --config rke.yaml
mkdir ~/.kube && mv kube_config_rke.yaml ~/.kube/config
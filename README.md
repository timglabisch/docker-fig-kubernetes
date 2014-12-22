# first try to set up kubernetes using fig

it doesnt work right now.

sudo /opt/kubernetes/_output/local/bin/linux/amd64/kubectl create --namespace="foo" --server="http://127.0.0.1:8080" -f /opt/kubernetes/examples/guestbook/redis-master.json
sudo /opt/kubernetes/_output/local/bin/linux/amd64/kubectl --namespace="foo" get pods
sudo /opt/kubernetes/_output/local/bin/linux/amd64/kubectl --namespace="foo" get

sudo /opt/kubernetes/_output/local/bin/linux/amd64/kubecfg -ns="foo" -p="1234:80" run dockerfile/nginx 1 myNginx
sudo /opt/kubernetes/_output/local/bin/linux/amd64/kubecfg --ns="foo" resize myNginx 3
sudo /opt/kubernetes/_output/local/bin/linux/amd64/kubecfg --ns="foo" stop myNginx
sudo /opt/kubernetes/_output/local/bin/linux/amd64/kubecfg --ns="foo" rm myNginx

curl "http://127.0.0.1:8080/api/v1beta1/podInfo?podID=redis-master&podNamespace=foo"
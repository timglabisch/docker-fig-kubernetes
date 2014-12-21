# first try to set up kubernetes using fig

it doesnt work right now.

sudo /opt/kubernetes/_output/local/bin/linux/amd64/kubectl create --namespace="foo" --server="http://127.0.0.1:18080" -f /opt/kubernetes/examples/guestbook/redis-master.json
sudo /opt/kubernetes/_output/local/bin/linux/amd64/kubectl --namespace="foo" --server="http://127.0.0.1:18080" get pods
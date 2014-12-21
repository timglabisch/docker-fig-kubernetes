#!/bin/bash

export KUBERNETES_PROVIDER=local
export KUBERNETES_MASTER="http://${ETCD_PORT_4001_TCP_ADDR}:${ETCD_PORT_4001_TCP_PORT}"

if [ "$*" == "/bin/bash" ]; then
    bash -c "/wrapdocker.sh &"
    sleep 6
    /usr/bin/supervisord -n
else
    /bin/bash -l -c "$*"
fi
FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y build-essential golang git make docker.io vim htop

RUN mkdir -p /opt/kubernetes && \
    cd /opt/kubernetes &&  \
    git clone https://github.com/GoogleCloudPlatform/kubernetes .

RUN cd /opt/kubernetes && ./hack/build-go.sh

RUN apt-get install -y supervisor apparmor

RUN echo 2

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD wrapdocker.sh /wrapdocker.sh
ADD start.sh /start.sh

ENTRYPOINT ["/start.sh"]

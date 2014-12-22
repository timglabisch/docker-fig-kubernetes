FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y build-essential golang git make docker.io vim htop apparmor

RUN mkdir -p /opt/kubernetes && \
    cd /opt/kubernetes &&  \
    git clone https://github.com/GoogleCloudPlatform/kubernetes .

RUN cd /opt/kubernetes && ./hack/build-go.sh

RUN apt-get install -y supervisor curl

RUN echo 6

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD start.sh /start.sh

EXPOSE 18080

ENTRYPOINT ["/start.sh"]

FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y build-essential golang git make vim htop apparmor curl && \
    curl -sSL https://get.docker.com/ubuntu/ | sudo sh

RUN mkdir -p /opt/kubernetes && \
    cd /opt/kubernetes &&  \
    git clone https://github.com/GoogleCloudPlatform/kubernetes .

RUN cd /opt/kubernetes && ./hack/build-go.sh

RUN apt-get install -y supervisor curl


RUN echo 1

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD wrapdocker.sh /wrapdocker.sh
ADD start.sh /start.sh

EXPOSE 8080

ENTRYPOINT ["/start.sh"]

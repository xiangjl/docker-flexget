#
# build docker image to run the flexget
#

FROM centos:latest
MAINTAINER XiangJL xjl-tommy@qq.com

RUN yum makecache && \
    yum install -y epel-release && \
    yum install -y python python-pip && \
    pip install -I flexget transmissionrpc && \
    yum clean all

RUN mkdir -p /root/.flexget \
    && touch /root/.flexget/config.yml

VOLUME ["/root/.flexget"]

ENTRYPOINT ["/usr/bin/flexget", "--loglevel", "info", "daemon", "start"]

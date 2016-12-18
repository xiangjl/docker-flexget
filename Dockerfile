#
# build docker image to run the flexget
#

FROM python:2.7
MAINTAINER XiangJL xjl-tommy@qq.com

# Set the locale RUN locale-gen en_US.UTF-8  
#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US:en
#ENV LC_ALL en_US.UTF-8

RUN pip install -I flexget transmissionrpc

RUN mkdir -p /flexget /docker

COPY ./startup.sh /docker/	

VOLUME ["/flexget"]

ENTRYPOINT ["/docker/startup.sh"]

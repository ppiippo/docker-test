# Version: 0.0.5
FROM ubuntu:14.04
MAINTAINER Pasi Piippo  "pp@cmpy.com"
ENV REFRESHED_AT 28.12.2015-10:00

RUN apt-get update -y && apt-get install -qqy wget
RUN wget -qO- https://get.docker.com/ | sh

RUN apt-get update -y && apt-get install -yqq python-pip
RUN pip install docker-compose

WORKDIR /root
ENTRYPOINT ["/bin/bash"]


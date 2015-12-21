# Version: 0.0.4
FROM ubuntu:14.04
MAINTAINER Pasi Piippo  "pp@cmpy.com"
ENV REFRESHED_AT 21.12.2015-12:00

RUN apt-get update -y && apt-get install -qqy iptables ca-certificates lxc openjdk-6-jdk git-core

WORKDIR /root
ENTRYPOINT ["/bin/bash"]


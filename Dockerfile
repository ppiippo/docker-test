# Version: 0.0.5
FROM ubuntu:14.04
MAINTAINER Pasi Piippo  "pp@cmpy.com"
ENV REFRESHED_AT 28.12.2015-10:00

#RUN apt-get update -y && apt-get install -qqy wget
#RUN wget -qO- https://get.docker.com/ | sh

#RUN apt-get update -y && apt-get install -yqq python-pip
#RUN pip install docker-compose
ADD http://apache.arvixe.com/spark/spark-1.5.2/spark-1.5.2-bin-hadoop2.6.tgz /opt
WORKDIR /opt
RUN tar -xvf spark-1.5.2-bin-hadoop2.6.tgz && rm -f spark-1.5.2-bin-hadoop2.6.tgz
RUN ln -sf spark-1.5.2-bin-hadoop2.6 spark
ENTRYPOINT ["/bin/bash"]


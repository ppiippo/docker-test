# Version: 0.0.3
FROM ubuntu:14.04
MAINTAINER Pasi Piippo  "pp@cmpy.com"
ENV REFRESHED_AT 18.12.2015-11:00
RUN apt-get update -y && apt-get install -qqy python
WORKDIR /root
CMD ["/bin/bash"]


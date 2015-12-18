# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Pasi Piippo  "pp@cmpy.com"
ENV REFRESHED_AT 18.12.2015 9:00
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' >/usr/share/nginx/html/index.html
EXPOSE 80
#CMD ["/bin/bash"]
ENTRYPOINT ["/usr/sbin/nginx"]


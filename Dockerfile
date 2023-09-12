FROM ubuntu:18.04
MAINTAINER Credo (credongoukeng@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
EXPOSE 81
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]



FROM ubuntu:22.04
RUN DEBIAN_FRONTEND="noninteractive"
RUN apt update -y && apt upgrade -y
RUN apt install -y \
      net-tools \
      sysstat \
      apache2

VOLUME [ "/etc/apache2/apache2.conf" ]
EXPOSE 80
EXPOSE 443
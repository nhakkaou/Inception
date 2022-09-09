FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install wget -y \
    && apt-get install apache2 -y \
    && apt-get install php -y
COPY ./tools/script.sh /tmp/script.sh
COPY ./conf/ports.conf /etc/apache2/ports.conf
EXPOSE 8080
ENTRYPOINT [ "/bin/sh", "/tmp/script.sh" ]
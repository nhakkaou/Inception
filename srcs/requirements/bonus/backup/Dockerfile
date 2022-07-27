FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y 
COPY ./tools/script.sh /tmp/script.sh
ENTRYPOINT [ "/bin/sh", "./tmp/script.sh" ]
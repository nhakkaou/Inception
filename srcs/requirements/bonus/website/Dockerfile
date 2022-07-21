from debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    &&  apt-get install npm -y \
    &&  apt-get install pm2 -y 

COPY ./tools/script.sh /tmp/script.sh

ENTRYPOINT [ "/bin/sh", "/tmp/script.sh" ]
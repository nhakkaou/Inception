from debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install adminer -y \
    && apt-get install wget -y
COPY ./tools/script.sh /tmp/script.sh
EXPOSE 8080
ENTRYPOINT [ "/bin/sh", "/tmp/script.sh" ]
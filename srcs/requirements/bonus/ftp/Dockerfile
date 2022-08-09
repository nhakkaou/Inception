FROM  debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    &&  apt-get install vsftpd -y \
    && cp /etc/vsftpd.conf /etc/vsftpd.conf.orig
COPY ./conf/vsftpd.conf /etc/vsftpd.conf
COPY ./tools/script.sh /tmp/script.sh

ENTRYPOINT [ "/bin/sh", "/tmp/script.sh" ]


# https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-for-a-user-s-directory-on-debian-10
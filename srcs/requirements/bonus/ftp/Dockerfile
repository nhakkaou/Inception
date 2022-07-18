from debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    &&  apt-get install vsftpd -y \
    && cp /etc/vsftpd.conf /etc/vsftpd.conf.orig

CMD tail -f /dev/null


# https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-for-a-user-s-directory-on-debian-10
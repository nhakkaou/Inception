FROM  debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    &&  apt-get install vsftpd -y \
    && cp /etc/vsftpd.conf /etc/vsftpd.conf.orig
RUN echo "listen=YES" > /etc/vsftpd.conf
RUN echo "listen_ipv6=NO" >> /etc/vsftpd.conf
RUN echo "connect_from_port_20=YES" >> /etc/vsftpd.conf
RUN echo "anonymous_enable=NO" >> /etc/vsftpd.conf
RUN echo "local_enable=YES" >> /etc/vsftpd.conf
RUN echo "write_enable=YES" >> /etc/vsftpd.conf
RUN echo "chroot_local_user=YES" >> /etc/vsftpd.conf
RUN echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf
RUN echo "pam_service_name=vsftpd" >> /etc/vsftpd.conf
RUN echo "pasv_enable=YES" >> /etc/vsftpd.conf
RUN echo "pasv_min_port=40000" >> /etc/vsftpd.conf
RUN echo "pasv_max_port=40005" >> /etc/vsftpd.conf
RUN echo "userlist_enable=YES" >> /etc/vsftpd.conf
RUN echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf
RUN echo "userlist_deny=NO" >> /etc/vsftpd.conf
COPY ./tools/script.sh /tmp/script.sh

ENTRYPOINT [ "/bin/sh", "/tmp/script.sh" ]


# https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-for-a-user-s-directory-on-debian-10
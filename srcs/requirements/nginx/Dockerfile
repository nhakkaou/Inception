FROM debian:buster

RUN apt-get update \
    && apt-get install -y nginx openssl
#Ref for -subj
#https://www.digicert.com/kb/ssl-support/openssl-quick-reference-guide.htm#Usingthe-subjSwitch
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-nginx.key -out /etc/ssl/certs/selfsigned-nginx.crt -subj "/C=MA/ST=Khouribga/L=Khouribga/O=Inception/OU=IT/CN=localhost/emailAddress=nhakkaou@student.1337.ma"
#  Difference Between TLSv1.2 TLSv1.3
#  https://www.a10networks.com/glossary/key-differences-between-tls-1-2-and-tls-1-3/
COPY ./conf/default /etc/nginx/sites-available/wordpress.conf
RUN ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

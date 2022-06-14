FROM debian:buster

RUN apt-get update 
RUN apt-get install -y nginx openssl ufw \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf


RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-nginx.key -out /etc/ssl/certs/selfsigned-nginx.crt -subj "/C=MA/ST=Khouribga/L=Khouribga/O=Inception/OU=IT/CN=nhamid.42.fr/emailAddress=nhamid@student.1337.ma"
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
RUN ufw allow 'Nginx Full'

EXPOSE 443 80

CMD service nginx start
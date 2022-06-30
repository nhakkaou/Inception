FROM debian:buster

RUN apt-get update 
RUN apt-get install -y nginx openssl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
# && echo "daemon off;" >> /etc/nginx/nginx.conf

#Ref for -subj
#https://www.digicert.com/kb/ssl-support/openssl-quick-reference-guide.htm#Usingthe-subjSwitch
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-nginx.key -out /etc/ssl/certs/selfsigned-nginx.crt -subj "/C=MA/ST=Khouribga/L=Khouribga/O=Inception/OU=IT/CN=localhost/emailAddress=nhakkaou@student.1337.ma"

RUN rm -rf /etc/nginx/sites-enabled/default
COPY ./config/default /etc/nginx/sites-available/default
RUN ln -s /etc/nginx/default /etc/nginx/sites-enabled/default
RUN chown -R www-data:www-data /var/www/html
EXPOSE 443

# CMD service nginx start
CMD  tail -f /dev/null


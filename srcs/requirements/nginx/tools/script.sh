
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-nginx.key -out /etc/ssl/certs/selfsigned-nginx.crt -subj "/C=MA/ST=Khouribga/L=Khouribga/O=Inception/OU=IT/CN=localhost/emailAddress=nhakkaou@student.1337.ma"
ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/
service nginx start
nginx -g 'daemon off;'
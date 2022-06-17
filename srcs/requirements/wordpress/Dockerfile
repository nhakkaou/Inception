from debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip wget git -y && sleep 5
RUN sed -i "s/post_max_size = 8M/post_max_size = 64M/g" /etc/php/7.3/fpm/php.ini \
sed -i "s/memory_limit = 128M/memory_limit = 256M/g" /etc/php/7.3/fpm/php.ini && \
sed -i "s/memory_limit = 30/max_execution_time = 300/g" /etc/php/7.3/fpm/php.ini && \
sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 32M/g" /etc/php/7.3/fpm/php.ini 

CMD ["bash", "-c", "echo '<?php phpinfo();' > /var/www/html/info.php"]
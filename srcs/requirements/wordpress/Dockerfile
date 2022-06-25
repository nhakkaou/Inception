from debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip curl git -y
COPY ./tools/script.sh /tmp/
COPY ./config/www.conf  /etc/php/7.3/fpm/pool.d/www.conf
COPY ./config/wp-config.php  /tmp/wp-config.php
ADD ./tools/script.sh /tmp/script.sh
ENTRYPOINT [ "/bin/sh", "/tmp/script.sh" ]
EXPOSE 9000


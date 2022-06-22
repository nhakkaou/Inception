from debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip curl git -y 
COPY ./tools/script.sh /tmp/
CMD sh ./tmp/script.sh
CMD ["bash", "-c", "echo '<?php phpinfo();' > /var/www/html/info.php"]
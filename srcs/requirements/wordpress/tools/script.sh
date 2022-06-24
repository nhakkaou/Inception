#!/bin/bash
echo "Install Wp";

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
&& chmod +x wp-cli.phar \
&& mv wp-cli.phar /usr/local/bin/wp \
&& wp core download --path=/home/wp --allow-root \
&& mv /tmp/wp-config.php /home/wp/ \
&& wp core install --url=nhakkaou.42.fr --title=Example --admin_user=nhakkaou --admin_password=toor --admin_email=noureddine.hak@gmail.com --path=/home/ --allow-root
tail -f > /dev/null
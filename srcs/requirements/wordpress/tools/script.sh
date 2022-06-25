#!/bin/bash
echo "Install Wp";

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --path=/home/wp --allow-root
rm -rf /home/wp/wp-config-sample
mv /tmp/wp-config.php /home/wp/
wp core install --url=${MYSQL_URL} --title=Example --admin_user=${MYSQL_USER} --admin_password=${MYSQL_PASSWORD} --admin_email=noureddine.hak@gmail.com --path=/home/wp/ --allow-root
tail -f > /dev/null
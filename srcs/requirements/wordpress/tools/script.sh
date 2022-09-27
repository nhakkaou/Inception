#!/bin/bash
echo "Install Wp";

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --path=/var/www/html --allow-root
chown -R www-data:www-data /var/www/html
rm -rf /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER_ROOT --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --path=/var/www/html/ --allow-root --skip-check
wp core install --url=$MYSQL_URL --title=Example --admin_user=$MYSQL_USER_ROOT --admin_password=$MYSQL_PASSWORD --admin_email=noureddine.hak@gmail.com --path=/var/www/html/ --allow-root
# Install Redis cache plugin
wp plugin install redis-cache --path=/var/www/html/ --activate --allow-root
wp redis enable --path=/var/www/html/ --allow-root
echo "define('WP_CACHE', true);" >> /var/www/html/wp-config.php
echo "define('WP_REDIS_HOST', 'redis');" >> /var/www/html/wp-config.php
service php7.3-fpm start
# tail -f > /dev/null
php
# php-fpm start -F
# tail is forbiden just for test
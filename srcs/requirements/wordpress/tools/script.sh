#!/bin/bash
echo "Install Wp";

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --path=/var/www/html --allow-root
chown -R www-data:www-data /var/www/html
rm -rf /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER_ROOT --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --path=/var/www/html/ --allow-root --skip-check --extra-php <<PHP
define('WP_CACHE', true);
define('WP_REDIS_HOST', 'redis');
define( 'WP_REDIS_PORT', 6379 );
define( 'WP_REDIS_TIMEOUT', 1 );
define( 'WP_REDIS_READ_TIMEOUT', 1 );
define( 'WP_REDIS_DATABASE', 0 );
PHP
wp core install --url=$MYSQL_URL --title=Example --admin_user=$MYSQL_USER_ROOT --admin_password=$MYSQL_PASSWORD --admin_email=noureddine.hak@gmail.com --path=/var/www/html/ --allow-root
# Install Redis cache plugin
wp plugin install redis-cache --path=/var/www/html/ --activate --allow-root
wp redis enable --path=/var/www/html/ --allow-root
service php7.3-fpm start
tail -f > /dev/null
# php-fpm start -F
# tail is forbiden just for test
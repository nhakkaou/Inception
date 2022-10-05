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
wp user create $MYSQL_USER $USER_EMAIL --user_pass=$MYSQL_PASSWORD --role=author --allow-root --path=/var/www/html/
# the file /var/run/php/ will be created automatically when you run php service
service php7.3-fpm start
# Install Redis cache plugin
wp plugin install redis-cache --path=/var/www/html/ --activate --allow-root
wp redis enable --path=/var/www/html/ --allow-root
# i Stop php cause the next command cannot use the port 9000
service php7.3-fpm stop
php-fpm7.3 -F
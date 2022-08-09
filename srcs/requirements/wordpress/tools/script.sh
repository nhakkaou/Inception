#!/bin/bash
echo "Install Wp";

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --path=$PATH_INSTALL --allow-root
chown -R www-data:www-data $PATH_INSTALL
rm -rf $PATH_INSTALL/wp-config-sample.php $PATH_INSTALL/wp-config.php
wp config create --dbname=$DB_NAME --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$MYSQL_HOST --path=$PATH_INSTALL --allow-root --skip-check
wp core install --url=$MYSQL_URL --title=Example --admin_user=$MYSQL_USER --admin_password=toor --admin_email=$ADMIN_EMAIL --path=$PATH_INSTALL --allow-root
wp plugin install redis-cache --path=$PATH_INSTALL/wordpress --activate --allow-root
wp plugin activate redis-cache --path=$PATH_INSTALL/ --allow-root
echo "define('WP_CACHE', true);" >> $PATH_INSTALL/wp-config.php
echo "define('WP_REDIS_HOST', 'redis');" >> $PATH_INSTALL/wp-config.php
service php7.3-fpm start
exec "$@"


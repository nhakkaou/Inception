#!/bin/bash
echo "Install Wp";

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --path=/var/www/html --allow-root
chown -R www-data:www-data /var/www/html
rm -rf /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
wp config create --dbname=nhakkaou --dbuser=nhakkaou --dbpass=toor --dbhost=mariadb --path=/var/www/html/ --allow-root --skip-check
wp core install --url=nhakkaou.42.fr --title=Example --admin_user=nhakkaou --admin_password=toor --admin_email=noureddine.hak@gmail.com --path=/var/www/html/ --allow-root
rm -rf redis-cache
wget https://downloads.wordpress.org/plugin/redis-cache.2.0.22.zip -P /var/www/html/wp-content/plugins/
unzip /var/www/html/wp-content/plugins/redis-cache.2.0.22.zip -d /var/www/html/wp-content/plugins/
wp plugin activate redis-cache.2.0.22 --path=/var/www/html/ --allow-root
rm -rf redis-cache*.zip
echo "define('WP_CACHE', true);" >> /var/www/html/wp-config.php
echo "define('WP_REDIS_HOST', 'redis');" >> /var/www/html/wp-config.php
service php7.3-fpm start
tail -f > /dev/null
# tail is forbiden just for test


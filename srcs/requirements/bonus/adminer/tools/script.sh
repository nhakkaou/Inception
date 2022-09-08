wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php
chown -R www-data:www-data /var/www/html/adminer.php
chmod 755 /var/www/html/adminer.php
sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf
service apache2 restart
php -S localhost:8000
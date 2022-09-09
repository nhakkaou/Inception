wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php
chown -R www-data:www-data /var/www/html/adminer.php
chmod 755 /var/www/html/adminer.php
service apache2 restart
php -S localhost:8000
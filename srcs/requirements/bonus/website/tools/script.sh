git clone https://github.com/nhakkaou/Pong-Game.git /var/www/html/Pong-Game
chown -R www-data:www-data /var/www/html/Pong-Game
chmod -R 755 /var/www/html/Pong-Game
cd /var/www/html/Pong-Game
npm install
tail -f /dev/null
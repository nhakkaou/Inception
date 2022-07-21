curl -sL https://deb.nodesource.com/setup_16.x |  bash -
apt -y install nodejs
git clone https://github.com/nhakkaou/Pong-Game.git /var/www/html/Pong-Game
cd /var/www/html/Pong-Game
npm install
npm install -g serve
npm run build
serve -s build
tail -f /dev/null
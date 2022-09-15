curl -sL https://deb.nodesource.com/setup_16.x |  bash -
apt-get -y install nodejs
git clone https://github.com/nhakkaou/Pong-Game.git /var/www/html/Pong-Game
npm install pm2 -g
npm --prefix /var/www/html/Pong-Game/ install --force
npm --prefix /var/www/html/Pong-Game/API install --force
pm2 start "npm --prefix /var/www/html/Pong-Game/ run dev" --name Client
npm --prefix /var/www/html/Pong-Game/API run dev

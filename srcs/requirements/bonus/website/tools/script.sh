curl -sL https://deb.nodesource.com/setup_16.x |  bash -
apt -y install nodejs
git clone https://github.com/nhakkaou/Pong-Game.git /var/www/html/Pong-Game
npm --prefix /var/www/html/Pong-Game/ install --force
npm --prefix /var/www/html/Pong-Game/ run dev
npm --prefix /var/www/html/Pong-Game/API install --force
npm --prefix /var/www/html/Pong-Game/API run dev
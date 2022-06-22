#!/bin/bash
echo "Install Wp";

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
&& chmod +x wp-cli.phar \
&& sudo mv wp-cli.phar /usr/local/bin/wp \
&& wp core download && wp core install --url=nhakkaou.42.fr --title=Example --admin_user=nhakkaou --admin_password=toor --admin_email=noureddine.hak@gmail.com
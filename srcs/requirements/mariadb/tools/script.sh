sed -i -e 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
service mysql start
mysql -u root < create_db.sql
mysqld_safe
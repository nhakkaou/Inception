FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/create_db.sql .
RUN service mysql start && mysql -u root < create_db.sql

EXPOSE 3306
CMD ["mysqld_safe"]
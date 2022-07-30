FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server
COPY ./conf/create_db.sql .
RUN sed -i -e 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf && service mysql start && mysql -u root < create_db.sql

EXPOSE 3306
CMD ["mysqld_safe"]
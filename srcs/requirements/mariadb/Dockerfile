FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server
COPY ./conf/create_db.sql .
COPY ./script.sh  /tmp/script.sh
RUN service mysql start
RUN sed -i -e 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf  && mysql -u root < create_db.sql
RUN service mysql retsart
EXPOSE 3306
ENTRYPOINT [ "mysqld_safe" ]
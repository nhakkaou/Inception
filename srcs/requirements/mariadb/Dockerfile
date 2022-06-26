FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server
COPY ./config/create_db.sql /tmp/
COPY ./config/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN service mysql start && mysql -u root < /tmp/create_db.sql

ENV MYSQL_USER=${MYSQL_USER} \
    MYSQL_PASSWORD=${MYSQL_PASSWORD} \
    MYSQL_DATABASE=${MYSQL_DATABASE} \
    MYSQL_ROOT_PASSWORD=${MYSQL_PASSWORD}

EXPOSE 3306
CMD ["mysqld_safe"]
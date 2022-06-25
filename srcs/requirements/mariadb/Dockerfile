FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server
COPY ./create_db.sql /tmp/
RUN service mysql start && mysql -u root < /tmp/create_db.sql

ENV MYSQL_USER=${MYSQL_USER} \
    MYSQL_PASSWORD=${MYSQL_PASSWORD} \
    MYSQL_DATABASE=${MYSQL_DATABASE} \
    MYSQL_ROOT_PASSWORD=${MYSQL_PASSWORD}

EXPOSE 3306
CMD ["mysqld_safe"]
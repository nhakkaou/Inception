FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server 
COPY ./create_db.sql .
RUN service mysql start && mysql -u root -e < create_db.sql

ENV MYSQL_USER=user \
    MYSQL_PASSWORD=pass \
    MYSQL_DATABASE=db \
    MYSQL_ROOT_PASSWORD=toor

EXPOSE 3306
CMD ["mysqld_safe"]
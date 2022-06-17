FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server 

RUN service mysql start

ENV MYSQL_USER=user \
    MYSQL_PASSWORD=pass \
    MYSQL_DATABASE=db \
    MYSQL_ROOT_PASSWORD=toor
CMD ["mysqld_safe"]
FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server 
ENV MYSQL_USER=user \
    MYSQL_PASSWORD=pass \
    MYSQL_DATABASE=db \
    MYSQL_ROOT_PASSWORD=toor

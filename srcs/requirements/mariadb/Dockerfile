FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server
COPY ./config/create_db.sql /tmp/
COPY ./tools/script.sh /tmp/
COPY ./config/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

ENV MYSQL_USER=nhakkaou \
    MYSQL_PASSWORD=toor \
    MYSQL_DATABASE=nhakkaou\
    MYSQL_ROOT_PASSWORD=toor

EXPOSE 3306
ENTRYPOINT [ "/bin/sh", "/tmp/script.sh" ]
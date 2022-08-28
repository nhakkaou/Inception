FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server
COPY ./conf/create_db.sql .
COPY ./tools/script.sh  /tmp/script.sh
EXPOSE 3306

ENTRYPOINT [ "/bin/sh", "/tmp/script.sh" ]
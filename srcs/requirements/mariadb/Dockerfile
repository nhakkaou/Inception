FROM debian:buster
RUN apt-get update -y

# we install mariadb server package
RUN apt-get install mariadb-server -y
RUN service mysql start
RUN chown -R mysql:mysql /var/lib/mysql  
RUN chmod 777 /var/run/mysqld
# we copy necessary files
COPY ./tools/mariadb.sh /
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN sh /mariadb.sh
# we expose db port 
EXPOSE 3306
# we run mysql daeamon
CMD exec mysqld_safe
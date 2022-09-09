# start mysql service first so we can execute mysql commands
service mysql start

# re-create root user https://stackoverflow.com/questions/11223235/mysql-root-access-from-all-hosts
mysql -u root -e "CREATE USER 'nhakkaou'@'%' IDENTIFIED BY 'toor'; GRANT ALL PRIVILEGES ON *.* TO 'nhakkaou'@'%' WITH GRANT OPTION;"

#https://chartio.com/resources/tutorials/how-to-grant-all-privileges-on-a-database-in-mysql/
# Create user and db from env
mysql -u root -e "CREATE USER 'diyo'@'%' IDENTIFIED BY 'toor';"
mysql -u root -e "CREATE DATABASE nhakkaou;"

# we allow user to access db, we flush previlages to save changes
mysql -u root -e "USE nhakkaou; GRANT ALL PRIVILEGES ON * TO 'diyo'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
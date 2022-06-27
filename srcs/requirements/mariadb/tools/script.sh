#!/bin/bash

service mysql start
mysql -u root < /tmp/create_db.sql
mysqld_safe
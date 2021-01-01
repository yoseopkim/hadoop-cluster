#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "root" ]
then
	HOST_NAME=`hostname`
	if [ $HOST_NAME = "mysql" ]
	then
		echo "mysql charset info"

		echo "[client]" > /etc/mysql/conf.d/mysql.cnf
		echo "default-character-set=utf8" >> /etc/mysql/conf.d/mysql.cnf

		echo "[mysql]" >> /etc/mysql/conf.d/mysql.cnf
		echo "default-character-set=utf8" >> /etc/mysql/conf.d/mysql.cnf

		echo "[mysqld]" >> /etc/mysql/conf.d/mysql.cnf
		echo "collation-server = utf8_unicode_ci" >> /etc/mysql/conf.d/mysql.cnf
		echo "init-connect='SET NAMES utf8'" >> /etc/mysql/conf.d/mysql.cnf
		echo "character-set-server = utf8" >> /etc/mysql/conf.d/mysql.cnf

		echo "mysql start ------------------------------------"
		echo "service mysql start"
		echo "mysql"
		echo "show variables like 'c%';"
		echo ""
		echo "mysql hive setup -------------------------------"
		echo "create database hive;"
		echo "create user hive;"
		echo "grant all privileges on hive.* to hive@'%' identified by 'hive';"
		echo "flush privileges;"

		echo "complete"
	else
		echo "skip / mysql host"
	fi
else
	echo "skip / root"
fi


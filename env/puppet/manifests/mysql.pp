

rpm -Uvh http://repo.mysql.com/mysql-community-release-el6-5.noarch.rpm

yum install mysql-community-server mysql-community-client

/etc/init.d/mysqld start
service mysqld start

sudo /sbin/chkconfig --add mysqld
sudo /sbin/chkconfig mysqld on
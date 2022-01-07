#don't use these people.  Just some rough code here, I may use later.

./shell.sh


#drop
mysql -u root -h 127.0.0.1 -p -e "drop database wp5"
#create
mysql -u root -h 127.0.0.1 -p -e "create database wp5"
#import
mysql -u root -h 127.0.0.1 -p wp5 < wp5.loc.sql

import
mysql -u root -h 127.0.0.1 -p wp5 < wp5.loc.sql


#I failed at using these, but they may come in handy
mysql -u root -h 127.0.0.1 -p -e "CREATE USER 'wp1'@'localhost' IDENTIFIED BY 'qwer'";
mysql -u root -h 127.0.0.1 -p -e "CREATE USER 'wp1'@'localhost' IDENTIFIED BY 'qwer'";
mysql -u root -h 127.0.0.1 -p -e "GRANT ALL PRIVILEGES ON * . * TO 'wp1'@'localhost';";
mysql -u root -h 127.0.0.1 -p -e "FLUSH PRIVILEGES;";
mysql -u root -h 127.0.0.1 -p -e "GRANT type_of_permission ON database_name.table_name TO 'wp1'@'localhost';";
mysql -u root -h 127.0.0.1 -p -e "GRANT ALL PRIVILEGES ON * . * TO 'wp1'@'localhost';";
mysql -u root -h 127.0.0.1 -p -e "FLUSH PRIVILEGES;";

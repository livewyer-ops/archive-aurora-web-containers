DELETE FROM mysql.user ;
CREATE USER 'root'@'%' IDENTIFIED BY 'lwtest' ;
GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION ;
DROP DATABASE IF EXISTS test ;
CREATE DATABASE IF NOT EXISTS `drupal` ;
CREATE USER 'livewyer'@'%' IDENTIFIED BY 'lwtest' ;
GRANT ALL ON `drupal`.* TO 'livewyer'@'%' ;
FLUSH PRIVILEGES ;

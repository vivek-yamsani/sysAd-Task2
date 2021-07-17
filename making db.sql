/*
execute this file by
logging into server from command line as
mysql --local-infile=1 -u root -p
*/
CREATE DATABASE Delta;
USE Delta;
CREATE TABLE MoMs(
    NAME varchar(20),
    DATE_OF_MEET DATE,
    MOM varchar(200)
    );
LOAD DATA LOCAL INFILE '/var/lib/mysql/MoMs.txt' INTO TABLE MoMs
COLUMNS TERMINATED BY '|';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password2';
GRANT SELECT, SHOW VIEW ON Delta.* TO 'user'@'localhost';
FLUSH PRIVILEGES;

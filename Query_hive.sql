Create and Load data in Hive table

CREATE DATABASE IF NOT EXISTS employee LOCATION '/data/employee';

hdfs -dsf -put employee /user/employee

hdfs -dsf -cat/user/employee

create table employee(
id int,
name string,
city string,
departament string,
salary int) 
row formate delimited
fields terminated by '~';

show table;

LOAD DATA LOCATL INPATH '/user/employee' OVERWRITE INTO TABLE employee;

SELECT * FROM employee;

---------------------------------------------------------------------------------------

 Hive Aggregation Functions
 
 SELECT SUM (salary) from employee;
 
 SELECT MAX(salary) from employee;
 
 SELECT MIN(salary) from employee;
 
 SELECT COUNT(*) from employee;




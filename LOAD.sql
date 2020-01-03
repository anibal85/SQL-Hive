LOAD DATA

### LOAD DATA Command Syntax### 

LOAD DATA INPATH "/path/to/file_or_directory" INTO TABLE TABLE_NAME;

LOAD DATA LOCAL INPATH "/path/to/file_or_directory" INTO TABLE TABLE_NAME;


CREATE EXTERNAL TABLE world_population (
  world_rank INT,
  country STRING,
  population BIGINT,
  world DOUBLE,
  extra_data STRING
 )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION "/home/hive/csv_target";



world_rank,country,population,world,extra_data
1,China,1388232694,0.19,"3.0,1.2,4.0"
2,India,1342512706,0.18,"3.0,1.2,4.0"
3,U.S.,326474013,0.04,"3.0,1.2,4.0"

load data local inpath "/home/hive/csv_default" into table world_population;

CREATE EXTERNAL TABLE world_population (
  world_rank INT,
  country STRING,
  population BIGINT,
  world DOUBLE,
  extra_data STRING
 )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE;



Guión como separador de campo y comillas simples como caracteres de comillas


world_rank-country-population-world-extra_data

CREATE TABLE world_population (
  world_rank INT,
  country STRING,
  population BIGINT,
  world DOUBLE,
  extra_data STRING
 )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES
(
    "separatorChar" = "-",
    "quoteChar"     = "'"
)
STORED AS TEXTFILE;

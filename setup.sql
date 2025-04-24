# show databases;
# CREATE DATABASE cap4770;
USE cap4770;
# SHOW tables;

# SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = true;

create table vehicle_fuel_economy(
Annual_fuel_consumption double,
MPG_City int,
co2TailpipeGpm double,
MPG_Combined int,
cylinders int,
displacement double,
engId int,
engine_description text,
Fuel_Efficiency_score int,
fuel_annual_cost08 int,
fuel_annual_costA int,
fuelType text,
fuelType1 text,
MPG_highway int,
hybrid_level int,
horsepower int,
id int,
make text,
model text,
transmission text,
UCity double,
UHighway double,
VClass text,
year int,
youSaveSpend int,
createdOn text,
modifiedOn text
);

LOAD DATA local infile '/Users/John/Documents/School/2025/Data Mining/Project/CAP-4770-Final-Project/vehicle-fuel-economy.csv'
into table vehicle_fuel_economy
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

# select * from vehicle_fuel_economy;


Create Database if not exists `TravelOnTheGo` ;

use TravelOnTheGo;


create table if not exists `PASSENGER`
(Passenger_name varchar(30),
 Category varchar(10),
 Gender varchar(3),
 Boarding_City varchar(20),
 Destination_City varchar(20),
 Distance int,
 Bus_Type varchar(15)
);

create table if not exists `PRICE`
(
Bus_Type varchar(15),
 Distance int,
 Price int
);

insert into PASSENGER values ('Sejal','AC','F','Bengaluru','Chennai',350,'Sleeper');
insert into PASSENGER values ('Anmol','Non-AC','M','Mumbai','Hyderabad',700,'Sitting');
insert into PASSENGER values ('Pallavi','AC','F','Panaji','Bengaluru',600,'Sleeper');
insert into PASSENGER values ('Khusboo','AC','F','Chennai','Mumbai',1500,'Sleeper');
insert into PASSENGER values ('Udit','Non-AC','M','Trivandrum','panaji',1000,'Sleeper');
insert into PASSENGER values ('Ankur','AC','M','Nagpur','Hyderabad',500,'Sitting');
insert into PASSENGER values ('Hemant','Non-AC','M','panaji','Mumbai',700,'Sleeper');
insert into PASSENGER values ('Manish','Non-AC','M','Hyderabad','Bengaluru',500,'Sitting');
insert into PASSENGER values ('Piyush','AC','M','Pune','Nagpur',700,'Sitting');


insert into PRICE values ('Sleeper','350','770');
insert into PRICE values ('Sleeper','500','1100');
insert into PRICE values ('Sleeper','600','1320');
insert into PRICE values ('Sleeper','700','1540');
insert into PRICE values ('Sleeper','1000','2200');
insert into PRICE values ('Sleeper','1200','2640');
insert into PRICE values ('Sleeper','1500','2700');
insert into PRICE values ('Sitting','500','620');
insert into PRICE values ('Sitting','600','744');
insert into PRICE values ('Sitting','700','868');
insert into PRICE values ('Sitting','1000','1240');
insert into PRICE values ('Sitting','1200','1488');
insert into PRICE values ('Sitting','1500','1860');




/* --- 3) How many females and how many male passengers travelled for a minimum distance of
600 KM s?   -------------*/

select count(Passenger_name) Count,Gender
from PASSENGER
where distance >=650
group by gender;


/* --- 4) Find the minimum ticket price for Sleeper Bus.   -----*/

select min(price) as 'Minimum Ticket Price' from price
where bus_type='Sleeper';

/* ------ 5) Select passenger names whose names start with character 'S'  ----*/

select Passenger_name from PASSENGER
where Passenger_name like 'S%';


/*--- 6) Calculate price charged for each passenger displaying Passenger name, Boarding City,
Destination City, Bus_Type, Price in the output      -------*/
select * from price;

select passenger_name,boarding_city,destination_city,pr.bus_type, pr.price
from passenger pa
inner join price pr on pa.bus_type=pr.bus_type and pa.distance=pr.distance;




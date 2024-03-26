create schema cars;

Select * from cars.car_dekho;

use cars;

-- 1. Read Cars Data --
select * from car_dekho;

-- 2.Total Cars: To get a count of total records -- 
select count(*) from car_dekho;

-- The Manager asked the employee How many cars will be available in 2023? --
select count(*) from car_dekho where year = 2023;

-- The Manager asked the employee How many cars will be available in 2021,2022,2020? --
select year, count(*) from car_dekho where year in(2020,2021,2022) group by year;

-- client asked us to print the total of all cars by year,as he dont see all the deatils -- 
select year, count(*) from car_dekho group by year;

-- client asked to car dekho dealer agent How many diesel cars will there be in 2020? -- 
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";

-- client asked to car dekho dealer agent How many petrol cars will there be in 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Petrol";

-- The manager told the employee to give a print all the fuel cars(petrol ,diesel, and CNG) come by all year.
select year,count(*) from car_dekho where fuel = "Petrol" group by year;
select year,count(*) from car_dekho where fuel = "Diesel" group by year;
select year,count(*) from car_dekho where fuel = "CNG" group by year;

-- manager said there were more then 100 cars in a given year,which year had more then 100 cars? -- 
select year,count(*) from car_dekho group by year having count(*)>100;

-- the manager said to the employee all the cars count details between 2015 and 2023; we need to complete list --
select count(*) from car_dekho where year between 2015 and 2023;

-- the manager said to the employee all the cars details between 2015 to 2023 wen need complete list -- 
select* from car_dekho where year between 2015 and 2023;







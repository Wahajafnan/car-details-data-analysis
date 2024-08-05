create database cars;
use cars;
#Read data
select * from car_details;
# total cars
select count(*) from car_details;
#cars available in 2023?
select count(*) from car_details 
where year=2023;
#cars available in 2020,2021,2022
select count(*) from car_details 
where year=2020;
select count(*) from car_details
where year=2021;
select count(*) from car_details 
where year=2022;
select year,count(*) from car_details
where year in (2020,2021,2022) group by year;
#total all cars by year
select year,count(*) as cars from car_details group by year;
#diesel cars in 2020
select year,fuel, count(*) as diesel_cars from car_details 
where fuel = 'diesel' and year=2020;
#petro cars in 2020
select year,fuel, count(*) as petrol_cars from car_details
where fuel='petrol' and year=2020;
#all fuel cars  comes every year
select year,fuel, count(*) from car_details
where fuel in ('cng','petrol','diesel') group by year,fuel;
#which year had more than 100 cars
select year,count(*) from car_details
group by year having count(*)>100;
#complete list of all cars between 2015 to 2023
select count(*) from car_details 
where year between 2015 and 2023;
select year,count(*) from car_details
where year between 2015 and 2023 group by year;
#all car details between 2015 to 2023
select * from car_details 
where year between 2015 and 2023;
#END
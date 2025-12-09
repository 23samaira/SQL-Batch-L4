show databases;
use world;
show tables;
describe city;
select * from city;
select name, population+10 from city;
-- select ka kaam hai sirf print krna woh changes nhi krega.
-- query can be written in multiple lines.
select nane, population, countrycode, 
population from city;
-- mysql is not case sensitive. 
SELECT name, population, countrycode, population FROM city;

select * from country;
-- column ko nickname as alias;
select *, population+12+12-4-5-12-4  as 'newpopulation'from country;

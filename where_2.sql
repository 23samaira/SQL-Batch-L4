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
select * from country;
select * from country where Name != 'Aruba';
show tables;
select * from city;
select * from city where id<=2;
select * from city where id not between 2 and 5;
select * from city where id not in (2,5);
select * from city where id <> 2;
select * from city where district = 'kabol';
select * from city where countrycode = 'ARG';
select * from city where population>600000;
select * from city where countrycode <> 'ARG';
select * from country where continent='europe';
select * from country where continent in ('North America', 'Europe', 'Asia');
select * from country where continent in ('North America', 'Europe', 'Asia','India');
-- if something is not present then no error, it's just that it will not dispaly that data.
select name, continent from country where indepyear not in(1901,1960);
-- range of values
select name, continent, indepyear from country where indepyear between 1901 and 1960;
-- not range of values:"
select name, continent, indepyear from country where indepyear not between 1901 and 1960;
describe country;
select code, name, region from country where region not in ('MiddleEast');
describe country;
select name, indepyear, population + 10/100 * population as 'changed population' from country;
describe country;
select * from country where lifeexpectancy in (38.3,66.4);
select name, continent , population, GNP from country where population not between 50000 and 200000 ;
select name, continent from country where name like 'A%';
select name, continent from country where name like '%A';
select name, continent from country where name like '%a%';
select name, continent from country where name like '%ad%';

-- _(underscore) => 1 character.
select name, continent from country where name like 'Ir__';

show databases;
use world;
show tables;
DESCRIBE city;
SELECT * FROM CITY WHERE id > 10 and Population < 50000;
SELECT * FROM city where id >10 or population>50000;
SELECT * FROM city where not id=10;
SELECT * from city where name  like  'k%' ;
SELECT * FROM city where id IS NULL;
SELECT * FROM city where id IS NOT NULL;
SELECT Name, instr(name,"an") from city;
-- case conversion

select name, upper(name), lower(name) from country;
select name,code, concat(name,'-',code) from country;
-- concat mei kitti bhi values jaa skti hai.
select name, code, concat_ws();

select name, region, continent from country where region like concat('%', continent);
select name, region, continent from country where name = region; -- 1st approach
select name, region, continent from country where name like region; -- 2nd approach
select name, left(name,1) from country where left(continent,1) = left(name,1);
select * from country;





select count(indepyear) from country;
select count(*), count(indepyear) from country; -- see count(*)
select distinct continent, region from country;
select count(population), sum(population), avg(population) from country;
select count(governmentform), count(distinct governmentform), sum(governmentform) from country where continent='Asia';
select sum(population) from country where continent='Africa';
-- see about aggregate function.alter --we can not use other column with aggregate function,
-- Q- total countries available in africa region..
select count(name), sum(population), count(distinct indepyear) from country where continent = 'Africa';
select * from country;
-- Q get the total countries, the average surface area, the total population for the countries which has got their independence from the year 1947 to 1998, these 2 years should not be included.
select count(name), avg(surfaceArea), sum(population) from country where indepyear between 1948 and 1997;
select count(name),avg(surfacearea), sum(population) from country where indepyear > 1947 and indepyear < 1998;
-- Q get the total number of countries and the number of unique continents alongwith the average population and the total number of the capitals for the countries starting with a or starting with d;
select count(name), count(distinct continent), avg(population), sum(capital) from country where name like 'a%' or name like 'd%';
-- group by similar values ko ek saath group karna, ikatha krna
select continent, count(*) from country group by continent;

-- Q har ek govtform ka total countries nikalna hai.
select * from country;
select governmentform, count(*) from country group by governmentform;
-- group by mei jo column hai wohi select mei aayega.
select now(), subdate(now(),2);
-- Q har ek continent mei kitti countries hai
select continent, count(name), sum(population), avg(population), max(population), min(population), max(indepYear), min(indepyear) from country group by continent;
-- Q from the city table you have to find the total cities, the total districts, unique districts,the total population from the city table.
select * from city;
select count(name), count(district), count(distinct district), sum(population) from city;

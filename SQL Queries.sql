use world;


#Task 1 - Using count, get the number of cities in the USA
select * from city;

select distinct count(*)
from city 
where CountryCode ='USA' ;

#Task 2 - Find out what the population and life expectancy for people in Argentina (ARG) is.
select * from country;

select name, population, lifeExpectancy
from country
where name = 'argentina';

#Task 3 Using ORDER BY, LIMIT, what country has the highest life expectancy?
select name, LifeExpectancy
from country
order by LifeExpectancy desc
limit 1;

#Task 4 Select 25 cities around the world that start with the letter 'F' in a single SQL query
select * from city;

select name
from city
where name like 'f%'
limit 25;

#Task 5 Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
select ID, Name, population
From city
ORDER BY ID AsC 
limit 10;


# Task 6 Create a SQL statement to find only those cities from city table whose population is larger than 2000000
select * from city;

select name, population
from city
where population > 200000;


# Task 7 Create a SQL statement to find all city names from city table whose name begins with “Be” prefix
select name
from city
where name like 'BE%';


# Task 8 Create a SQL statement to find only those cities from city table whose population is between 500000-1000000
select name, population
from city
where population between 500000 and 1000000;


#Task 9 Create a SQL statement to find a city with the lowest population in the city table.
select name, population
from city
order by population asc
limit 1;

select * from country;
select * from city;

# Optional
# Create a SQL statement to find the capital of Spain (ESP).

select country.name as country, city.name as capital, city.countrycode 
from city
inner join country 
on city.id=country.capital
where country.name = 'spain';

select * from country;
select * from countrylanguage;

# Create a SQL statement to list all the languages spoken in the Caribbean region

select countrylanguage.language, country.name as Country, country.region
from countrylanguage
inner join country
on countrylanguage.countrycode= country.code
where country.region = 'caribbean';

# Create a SQL statement to find all cities from the Europe continent.
select city.name as city, country.name as country, country.continent 
from city
inner join country
on city.countrycode=country.code
where country.continent = 'europe';


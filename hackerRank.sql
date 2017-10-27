-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

select city from (
select city, row_number() over(partition by length(city) order by city) rown from station 
where length(city) in (
select max(length(city)) max_len from station
union
select min(length(city)) min_len from station
)
order by length(city), city) M
where M.rown=1;

--or
select city, len from (
select city, length(city) len from station order by len, city
) where rownum=1
union
select city, len from (
select city, length(city) len from station order by len desc, city
) where rownum=1 ;


-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
select distinct city from station
where lower(substr(city, 0,1)) in ('a','e','i','o', 'u');

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select distinct city from station
where lower(substr(city, -1,1)) in ('a','e','i','o', 'u');

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
select distinct city from station
where lower(substr(city, -1,1)) in ('a','e','i','o', 'u') and 
lower(substr(city, 0,1)) in ('a','e','i','o', 'u')  ;

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct city from station
where lower(substr(city, 0,1)) not in ('a','e','i','o', 'u');

-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
select distinct city from station
where lower(substr(city, -1,1)) not in ('a','e','i','o', 'u');

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
select distinct city from station
where lower(substr(city, -1,1)) not in ('a','e','i','o', 'u') or 
lower(substr(city, 0,1)) not in ('a','e','i','o', 'u')  ;

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
select distinct city from station
where lower(substr(city, -1,1)) not in ('a','e','i','o', 'u') and 
lower(substr(city, 0,1)) not in ('a','e','i','o', 'u')  ;












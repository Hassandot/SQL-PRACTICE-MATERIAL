SELECT * from users where id = 1;
SELECT * from CITY where COUNTRYCODE='JPN';
select NAME from CITY where COUNTRYCODE='JPN';
SELECT CITY,STATE from STATION;
select count(CITY) - count(distinct CITY) from STATION;
select CITY,length(CITY) from STATION order by length(CITY),CITY LIMIT 1;
select CITY,length(CITY) from STATION order by length(CITY) DESC,CITY LIMIT 1;
select city from STATION where CITY regexp '^[aeiouAEIOU]';-- select city from STATION where CITY regexp '^[aeiouAEIOU]';-
select distinct CITY from STATION where CITY regexp '[aeiouAEIOU]$'; -- select distinct CITY from STATION where CITY regexp '[aeiouAEIOU]$'; --
select distinct CITY from STATION where CITY regexp '^[aeiouAEIOU].*[aeiouAEIOU]$';
select distinct CITY from STATION where CITY regexp '^[^aeiouAEIOU]';
SELECT distinct CITY from STATION where CITY regexp '^[^aeiouAEIOU]' or
CITY regexp '[^aeiuoAEIOU]$';
SELECT distinct CITY from STATION where CITY regexp '^[^aeiouAEIOU]' and
CITY regexp '[^aeiuoAEIOU]$';
select NAME from STUDENTS where MARKS>75 order by substring(NAME,length(NAME)-2,3)
,ID ASC;
select name from Employee order by name;
select name from Employee where salary>2000 and months<10 order by employee_id;
SELECT count(Name) from CITY where POPULATION>100000 ;
SELECT sum(POPULATION) from CITY where DISTRICT='California';
SELECT avg(population) from city where district='California';
select round(avg(population)) from city;
SELECT sum(population) from city where countrycode='JPN';








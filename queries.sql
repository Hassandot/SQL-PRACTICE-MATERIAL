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
select max(population)-min(population) from city;
select ceil(avg(salary)-avg(cast(replace(salary,'0','')as unsigned))) from employees;
select (select max(months*salary) from employee),count(*) from employee where months*salary=(select max(months*salary) from employee);
select round(sum(lat_n),2) , round(sum(long_w),2) from station;
select round(sum(lat_n),4) from station where lat_n>38.7880 and lat_n<137.2345; 
select round(max(lat_n),4) from station where lat_n<137.2345;
SELECT round(long_w,4) from station where lat_n=(select max(lat_n) from station where lat_n<137.2345); 
select round(lat_n,4) from station where lat_n=(select min(lat_n) from station where lat_n>38.7780);









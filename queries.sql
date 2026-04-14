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









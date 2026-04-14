SELECT * from users where id = 1;
SELECT * from CITY where COUNTRYCODE='JPN';
select NAME from CITY where COUNTRYCODE='JPN';
SELECT CITY,STATE from STATION;
select count(CITY) - count(distinct CITY) from STATIO
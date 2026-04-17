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
select round(long_w,4) from station where lat_n=(select min(lat_n) from station where lat_n>38.7780);
select 
case 
when a+b<=c or a+c<=b or b+c<=a then 'Not A Triangle'
when a=b and b=c then 'Equilateral'
when a=b or b=c or a=c then 'Isosceles'
else 'Scalene'
end
from triangles;
SELECT concat(name,'(',substring(occupation,1,1),')') from occupations order by name; 
select concat('There are a total of ',count(occupation),' ',lower(occupation),'s.') from occupations group by occupation
order by count(occupation),occupation; 
SELECT sum(c.population) from city c join country cc on c.countrycode=cc.code where cc.continent='Asia';
SELECT c.name from city c join country cc on c.countrycode=cc.code WHERE cc.continent='Africa';
SELECT cc.continent,floor(avg(c.population)) from city c join country cc on c.countrycode=cc.code group by cc.continent;
select product_id from products where low_fats='Y' and recyclable='Y';
select teacher_id,count(distinct subject_id) as cnt from teacher group by teacher_id;
select date_id,make_name ,count(distinct lead_id) as unique_leads,count(distinct partner_id) as unique_partners from dailysales group by date_id,make_name;
select event_day as day , emp_id ,(select sum(out_time-in_time) from employees where emp_id=e.emp_id and event_day=e.event_day) as total_time from employees e group by emp_id,event_day;
select p.product_name,s.year,s.price from sales s join product p on p.product_id=s.product_id;
select product_id,'store1' as store,store1 as price  from products where store1 is not  null
union all
select product_id,'store2',store2 from products where store2 is not  null
union all
select product_id,'store3',store3 from products where store3 is not  null;
select tweet_id from tweets where char_length(content)>15;
update Salary 
set sex = case
when sex='f' then 'm'
when sex='m' then 'f'
end;
select eu.unique_id as unique_id,e.name from employees e left join employeeuni eu on e.id=eu.id;









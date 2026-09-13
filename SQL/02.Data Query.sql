Create Database bluk_load;
USE bluk_load;
Select Database();
Select count(*) FROM sales;
DESC sales;
Select * FROM sales
WHERE country="France";
Select * FROM sales 
WHERE country ="INDIA" or country ="HUNGARY";
SELECT * from sales
WHERE country IN ("india" , "France", "usa");
select quantity from sales
where quantity between 10 and 20;
select discount from sales
where discount between 0.1 and 0.3;
select * from sales 
where market = "us" and sales > 200;
select sales from sales
Order by sales DESC;
select sales from sales
order by sales DESC limit 5;
select sales from sales 
order by sales desc limit 5 offset 5;
select  sales from sales 
order by sales asc limit 10;
select profit , category from sales 
order by category , profit  desc limit 5; 
select profit , category from sales
order by profit asc limit 3;
select * from sales
where market = "us";
select * from sales 
where sales > 500;
select * from sales 
where sales > 1000 and discount between 0.1 and 0.3;
select market , sales from sales 
where market = "us" order by sales desc limit 5; 
select quantity from sales
where quantity between 10 and 20 order by  quantity desc ; 
select country,sales from sales 
where country = "india" or country = "france" order by sales 
desc;
select country from sales 
group by country;
select count(*) from sales;
select country , count(*) from sales
group by country;
select market ,count(*) from sales 
group by market;
select  sum(sales) from sales;
select category , sum(sales) from sales
group by category  ; 
select market , sum(profit) from sales
group by market;
select category, avg(sales) from sales
group by category;
select market , avg(profit) from sales 
group by market;
select category , max(sales) from sales 
group by category;
select market , min(profit) from sales
group by market;
select category , sum(sales) , sum(profit) from sales
group by category;
select category , count(*) from sales
group by category;
select market , sum(sales), avg(sales) from sales
group by market;
select category , max(profit) , min(profit) from sales
group by category;
select market , sum(profit) as total_profit from sales 
group by market;
select category , sum(sales) from sales 
group by category having sum(sales)> 500;
select market ,avg(profit) from sales 
group by market having avg(profit) > 50;
select market ,count(*) from sales
group by market having count(*) > 10;
select category ,sum(profit) as total_profit from sales
group by category having  sum(profit)> 1000;
 SELECT distinct country from sales;
 SELECT count(distinct country) from sales;
 select country,count(distinct customer_name) from sales 
 group by country ;
 select count(distinct customer_name) from sales;
 select country, count(*) from sales
 group by country having count(*) > 10;
 select category ,avg(sales) from sales 
 group by category having avg(sales)>100 order by avg(sales) desc;
 select market , sum(profit) from sales
 group by market having sum(profit)>500 order by sum(profit) 
 desc;
select category , sum(sales) from sales 
group by category order by sum(sales) desc limit 3;
select category , sum(profit) from sales 
group by category order by sum(profit) asc limit 3;
use bluk_load;
DESCRIBE sales;
select year("2025-06-15");
 select month("2025-06-15");
 select day ("2025-06-15");
 select quarter ("2025-06-15");
 select week ("2025-06-15");
 select order_date from sales;
 select str_to_date("1-1-2011","%m-%d-%Y");
 select str_to_date ("1/25/2011","%m/%d/%Y");
 select str_to_date (order_date, "%m/%d/%Y") from sales;
select str_to_date (order_date,"%m/%d/%Y") from sales;
select month (order_date) from sales;
select day (order_date) from sales;
select year (order_date) , sum(profit) from sales 
group by year(order_date);
select month(order_date), avg(sales) from sales
group by month(order_date);
select year(order_date), month(order_date),avg(sales) 
from sales
group by year(order_date), month(order_date);

select country , category , avg(sales) from sales 
group by country , category having avg(sales)>500
order by avg(sales) desc limit 5 offset 2;
select country , sum(sales) from sales
group by country
order by sum(sales) desc limit 5;
use bluk_load;
select category , avg(profit) from sales
group by category having avg(profit) > 50 order by 
avg(profit) desc limit 3;
select market, sum(sales) from sales 
group by market having sum(sales) >10000;
select market, count(distinct customer_name) from sales
group by market ;
select category , max(sales) from sales
group by category having max(sales) order by max(sales) desc; 
use bluk_load;
select category , max(sales) from sales
group by category  order by max(sales) desc; 

select country , avg(sales) from sales
group by country having avg(sales) > 300 
order by avg(sales) desc ;
select category , sum(profit) from sales 
group by category having sum(profit) > 1000
order by sum(profit) desc ;
select category , count(*) from sales 
group by category having count(*) > 20;
select market , min(profit) from sales
group by market order by min(profit) asc;
select category , sub_category ,sum(sales) from sales
group by category , sub_category order by sum(sales) desc;
select segment , avg (profit) from sales 
group by segment having avg(profit)> 100 
order by avg (profit) desc;
select country, count(*) from sales
group by country having count(*) > 10 
order by count(*) desc;
select category , sum(sales)  , sum(profit) from sales
group by category order by sum(sales) desc; 
select country , count(distinct customer_name) from sales 
group by country having count(distinct customer_name) > 5 ;
select year (order_date), sum(profit) from sales 
group by year(order_date) order by sum(profit) desc;
select month(order_date) , avg(sales) from sales
group by month(order_date) order by avg(sales) desc;
select year(order_date), month(order_date), avg(sales) from sales
group by year(order_date), month(order_date) order by year(order_date)
, month(order_date);




























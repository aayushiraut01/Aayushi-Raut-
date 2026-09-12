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
 
--CREATE TABLE
CREATE TABLE RETAIL(
transactions_id	 INT,
sale_date	DATE,
sale_time	TIME,
customer_id	INT,
gender	VARCHAR(27),
age	INT,
category VARCHAR(25),
quantiy	INT,
price_per_unit	FLOAT,
cogs	FLOAT,
total_sale FLOAT,
);

--DATA CLEANING 
select * from RETAIL
WHERE transactions_id is null
or
 sale_date is null
or
customer_id is null
or
gender is null
or
category is null
or
 quantity is null
or
price_per_unit	is null
or
 cogs is null
or
 total_sale is null;

--DELETE NULL VALUES
delete from RETAIL 
WHERE transactions_id is null
or
 sale_date is null
or
customer_id is null
or
gender is null
or
category is null
or
 quantity is null
or
price_per_unit	is null
or
 cogs is null
or
 total_sale is null;

               --DATA INSIGHT --
 
-- Q1. HOW MANY SALES WE HAVE 
SELECT count(*) as total_sale FROM RETAIL;

-- Q2.HOW MANY CUSTOMERS WE HAVE
SELECT count(DISTINCT customer_id) as customer_id from RETAIL;

--Q3. HOW  MANY UNIQUE CATEGORY WE HAVE 
SELECT  DISTINCT category as category from RETAIL;

             -- BUSINESS PROBLEMS-- 

--Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05

select * from RETAIL
where sale_date = TO_DATE ('2022-11-05' ,'yyyy-mm-dd');

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
SELECT * from RETAIL 
WHERE category = 'Electonis'
   AND quantity >=10
   AND TO_CHAR(sale_date ,'yyyy-mm') = '2022-11';


--Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
select category ,
sum(total_sale) as total ,
count(*) as total_order
from RETAIL 
group by 1 ;

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
select * from RETAIL
where total_sale >1000;

-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
select category ,gender ,
count(*) transaction_id 
from RETAIL 
GROUP BY category,gender
order by 1;

--Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
select year,month,avg_sale
from 
(select
extract(year from sale_date) as year,
extract (month from sale_date) as month,
avg(total_sale) as avg_sale,
rank() over (partition by extract(year from sale_date) order by avg(total_sale)desc) as rank
from RETAIL
GROUP BY 1,2
)AS T1
WHERE RANK =1;

--Q.8 Write a SQL query to find the top 5 customers based on the highest total sales
select customer_id,
sum(total_sale)as top_sale
from RETAIL
group by 1
order by 2 DESC
limit 5;

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
SELECT category,
count(distinct customer_id) as unique_id
from RETAIL
GROUP BY category ;

--Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
with hourly_sale as(
select*,
      case 
	  when extract (hour from sale_time) <=12 then 'morning'
	  when extract (hour from sale_time) between 12 and 17 then 'afternoon'
	  else 'evening'
	  end as shift
	  from RETAIL
)
SELECT 
    shift,
    COUNT(*) AS total_orders
FROM hourly_sale
GROUP BY shift;


--END--

select * from RETAIL



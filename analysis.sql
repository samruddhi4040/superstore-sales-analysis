 
create database superstore;

use superstore;

select count(*) from orders;
select * from orders;

-- 1. Total Sales and Profit (KPI)
select 
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit
from orders;

-- 2. Discount vs Profit Analysis 
select Discount, 
avg(Profit) as Avg_Profit
from orders
group by Discount
order by Avg_Profit desc;

-- 3.Profit by Category 
select Category, 
sum(Profit) as Total_Profit
from orders
group by Category
order by Total_Profit desc;


-- 4. Sales by region
select Region, sum(Sales) as Total_Sales
from orders
group by Region
order by Total_Sales desc;


-- 5. Profit by Region 
select Region, sum(Profit) as Total_Profit
from orders
group by Region
order by Total_Profit desc;

-- 6. Top Products 
select `Product Name`, sum(Sales) as Total_Revenue
from orders
group by `Product Name`
order by Total_Revenue desc limit 5;
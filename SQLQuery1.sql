select * from pizza_sales 

 select sum(total_price) AS Total_Revenue from pizza_sales

 select sum(total_price) / count(Distinct order_id) as Avg_Order_Value from pizza_sales

 select sum(quantity) AS Total_Pizza_Sold from pizza_sales

 select COUNT(Distinct order_id) As Total_orders from pizza_sales

 select sum(quantity) / COUNT(Distinct order_id) from pizza_sales

SELECT 
    CAST(
        CAST(SUM(quantity) AS DECIMAL(10,2)) 
        / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) 
        AS DECIMAL(10,2)
    ) AS Avg_pizzas_Per_Order
FROM pizza_sales;

--daily trend
select DATENAME(DW , order_date) as order_day , COUNT(Distinct order_id) AS Total_orders
 from pizza_sales
 group by DATENAME(DW , order_date)

 --hourly trend
 select DATEPART(HOUR , order_time) As order_hours , COUNT(Distinct order_id)
 As Total_orders from pizza_sales
 group by DATEPART(HOUR , order_time)
 order by DATEPART(HOUR , order_time)

 --percentage of sales by pizza category
 select pizza_category, sum(total_price) as Total_Sales , SUM(total_price)* 100/ 
 (select sum(total_price) from pizza_sales where MONTH(order_date)=1)  As PCT
 from pizza_sales
 where MONTH(order_date)=1
 group by pizza_category
   

select pizza_size, sum(total_price) as Total_Sales , SUM(total_price)* 100/ 
 (select sum(total_price) from pizza_sales)   As PCT
 from pizza_sales
 group by pizza_size
 order by PCT DESC

 select pizza_size, sum(total_price) as Total_Sales , CAST(SUM(total_price)* 100/ 
 (select sum(total_price) from pizza_sales) AS Decimal(10,2)) As PCT
 from pizza_sales
 group by pizza_size
 order by PCT DESC

 
 select pizza_size,  CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Sales , CAST(SUM(total_price)* 100/ 
 (select sum(total_price) from pizza_sales) AS Decimal(10,2)) As PCT
 from pizza_sales
 group by pizza_size
 order by PCT DESC

  select pizza_size,  CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Sales , CAST(SUM(total_price)* 100/ 
 (select sum(total_price) from pizza_sales  where DATEPART(quarter, order_Date)=1) AS Decimal(10,2)) As PCT
 from pizza_sales
 where DATEPART(quarter, order_Date)=1
 group by pizza_size
 order by PCT DESC

 select pizza_category, sum(quantity) as Total_Pizzas_sold
 from pizza_sales
 group by pizza_category

 select pizza_name , sum(quantity) as Total_Pizzas_sold
 from pizza_sales
 group by pizza_name
 

  select top 5 pizza_name , sum(quantity) as Total_Pizzas_sold
 from pizza_sales
 group by pizza_name
 order by sum(quantity) DESC

 select top 5 pizza_name , sum(quantity) as Total_Pizzas_sold
 from pizza_sales
 group by pizza_name
 order by sum(quantity) asc
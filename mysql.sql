use company

select * from sales;


#1. Retrieve all records from the sales table.
select * from sales;

#2. Get the total number of records in the sales table.
select count
#3. Find the total revenue generated from sales.
#4. Retrieve the most expensive product.

select*from sales
order by price desc
limit 1;

5. Find the cheapest product.
select*from sales
order by price Asc
limit 1;

6. Retrieve products sold in the month of March.
select * from sales
where extract( month from sale_date)=3;                                    ######

7. Find the average price of all products.
select  avg(price)as average_price
from sales;


8. Count the number of sales transactions per category.
select count(category) as total_transaction
from sales
group by category;


9. Retrieve the product with the highest quantity sold.
select * from sales
order by  quantity_sold desc
limit 1;


10. Find the product with the lowest quantity sold.



11. Retrieve sales details for Electronics category.
select * from sales
where category = 'Electronics';

12. Find total sales revenue for Accessories category.
select * from sales
where category = ' Accessories';

13. Retrieve products where quantity sold is greater than 20.
select * from sales
where quantity_sold>20;

14. List sales data ordered by sale_date in descending order.
select * from sales
order by sale_date asc;

15. Retrieve the top 5 most expensive products.
select * from sales
limit 5;

16. Find the sum of quantity_sold for all products.
select sum( quantity_sold ) from sales;

17. Retrieve distinct product categories.
select distinct(category)from sales;

18. Count how many times each product was sold.
SELECT product_name, COUNT(*) AS times_sold
FROM sales
GROUP BY product_name;


19. Retrieve the latest 10 sales transactions.
select * from sales
order by sale_date desc
limit 10;

20. Find the most recent sale date.
select max(sale_date) as  recent_sale_date
from sales;

21. Find the total revenue generated in February.
SELECT SUM(price * quantity_sold) AS total_revenue_february
FROM sales
WHERE MONTH(sale_date) = 2;

22. Retrieve sales where price is between 5000 and 20000.
select*from sales
where price between 5000 and 20000;

23. Find the average quantity sold per transaction.
select avg(quantity_sold)from sales;

24. List products whose name starts with 'S'.
SELECT DISTINCT product_name
FROM sales
WHERE product_name LIKE 'S%';

25. Retrieve sales where quantity_sold is even.
SELECT *
FROM sales
WHERE MOD(quantity_sold, 2) = 0;

26. Retrieve the first 10 sales transaction.
SELECT *
FROM sales
ORDER BY sale_date ASC
LIMIT 10;

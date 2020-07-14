-- No.1 Write a SQL statement to find the total purchase amount of all orders.
SELECT SUM(purch_amt)
FROM orders

-- No.2 Write a SQL statement to find the average purchase amount of all orders.
SELECT AVG(purch_amt)
FROM orders

-- No.3 Write a SQL statement to find the number of salesmen currently listing for all of their customers.
SELECT COUNT(DISTINCT salesman_id)
FROM orders

-- No.4 Write a SQL statement know how many customer have listed their names.
SELECT COUNT(*)
FROM customer

-- No.5 Write a SQL statement find the number of customers who gets at least a gradation for his/her performance.
SELECT COUNT(grade)
FROM customer

-- No.6 Write a SQL statement to get the maximum purchase amount of all the orders.
SELECT MAX(purch_amt)
FROM orders

-- No.7 Write a SQL statement to get the minimum purchase amount of all the orders.
SELECT MIN(purch_amt)
FROM orders

-- No.8 Write a SQL statement which selects the highest grade for each of the cities of the customers.
SELECT city, MAX(grade)
FROM customer
GROUP BY city

-- No.9 Write a SQL statement to find the highest purchase amount ordered by the each customer with their ID and highest purchase amount.
SELECT customer_id, MAX(purch_amt)
FROM orders
GROUP BY customer_id

-- No.10 Write a SQL statement to find the highest purchase amount ordered by the each customer on a particular date with their ID, order date and highest purchase amount.
SELECT customer_id, ord_date, MAX(purch_amt)
FROM orders
GROUP BY customer_id, ord_date

-- No.11 Write a SQL statement to find the highest purchase amount on a date '2012-08-17' for each salesman with their ID.
SELECT salesman_id, MAX(purch_amt)
FROM orders
WHERE ord_date='2012-08-17'
GROUP BY salesman_id

-- No.12 Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have highest purchase amount in a day is more than 2000.
SELECT customer_id, ord_date, MAX(purch_amt)
FROM orders
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt)>2000

-- No.13 Write a SQL statement to find the highest purchase amount with their ID and order date, for those customers who have a higher purchase amount in a day is within the range 2000 and 6000.
SELECT customer_id, ord_date, MAX(purch_amt)
FROM orders
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt)>=2000 AND MAX(purch_amt)<=6000

-- No.14 Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have a higher purchase amount in a day is within the list 2000, 3000, 5760 and 6000.
SELECT customer_id, ord_date, MAX(purch_amt)
FROM orders
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) IN (2000, 3000, 5760, 6000)

-- No.15 Write a SQL statement to find the highest purchase amount with their ID, for only those customers whose ID is within the range 3002 and 3007.
SELECT customer_id, MAX(purch_amt)
FROM orders
GROUP BY customer_id
HAVING customer_id BETWEEN 3002 AND 3007

-- No.16 Write a SQL statement to display customer details (ID and purchase amount) whose IDs are within the range 3002 and 3007 and highest purchase amount is more than 1000.
SELECT customer_id, MAX(purch_amt)
FROM orders
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id
HAVING MAX(purch_amt) > 1000

-- No.17 Write a SQL statement to find the highest purchase amount with their ID, for only those salesmen whose ID is within the range 5003 and 5008.
SELECT salesman_id, MAX(purch_amt)
FROM orders
WHERE salesman_id BETWEEN 5003 AND 5008
GROUP BY salesman_id

-- No.18 Write a SQL statement that counts all orders for a date August 17th, 2012.
SELECT Count(*)
FROM orders
WHERE ord_date='2012-08-17'

-- No.19 Write a SQL statement that count the number of salesmen for whom a city is specified. Note that there may be spaces or no spaces in the city column if no city is specified.
SELECT Count(name)
FROM salesman
WHERE city IS NOT NULL

-- No.20 Write a query that counts the number of salesmen with their order date and ID registering orders for each day.
SELECT COUNT(salesman_id), ord_date, salesman_id
FROM orders
GROUP BY ord_date, salesman_id

-- No.21 Write a SQL query to calculate the average price of all the products.
SELECT AVG(pro_price), pro_name
FROM item_mast
GROUP BY pro_name

-- No.22 Write a SQL query to find the number of products with a price more than or equal to Rs.350.
SELECT COUNT(pro_name)
FROM item_mast
WHERE pro_price >= 350

-- No.23 Write a SQL query to display the average price of each company's products, along with their code.
SELECT pro_id, AVG(pro_price)
FROM item_mast
GROUP BY pro_id

-- No.24 Write a query in SQL to find the sum of the allotment amount of all departments.
SELECT SUM(dpt_allotment)
FROM emp_department

-- No.25 Write a query in SQL to find the number of employees in each department along with the department code.
SELECT emp_dept, COUNT(*)
FROM emp_details
GROUP BY emp_dept

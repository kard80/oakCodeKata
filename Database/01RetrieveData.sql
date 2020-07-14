-- No.1 Write a SQL statement to display all the information of all salesmen.
SELECT * FROM salesman

-- No.2 Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution".
SELECT 'This is SQL Exercise, Practice and Solution';

-- No.3 Write a query to display three numbers in three columns.
SELECT 1,2,3;

-- No.4  Write a query to display the sum of two numbers 10 and 15 from RDMS sever.
SELECT 10 + 15;

-- No.5 Write a query to display the result of an arithmetic expression.
SELECT 4 + (3 - 1) * 3;

-- No.6 Write a SQL statement to display specific columns like name and commission for all the salesmen.
SELECT name, commission FROM salesman;

-- No.7 Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders.
SELECT ord_date, salesman_id, ord_no, purch_amt FROM orders

-- No.8 Write a query which will retrieve the value of salesman id of all salesmen, getting orders from the customers in orders table without any repeats.
SELECT DISTINCT salesman_id
FROM orders

-- No.9 Write a SQL statement to display names and city of salesman, who belongs to the city of Paris.
SELECT name, city
FROM salesman
WHERE city='Paris'

-- No.10  Write a SQL statement to display all the information for those customers with a grade of 200.
SELECT *
FROM customer
WHERE grade='200'

-- No.11 Write a SQL query to display the order number followed by order date and the purchase amount for each order which will be delivered by the salesman who is holding the ID 5001. 
SELECT ord_no, ord_date, purch_amt
FROM orders
WHERE salesman_id='5001'

-- No.12 Write a SQL query to display the Nobel prizes for 1970.
SELECT *
FROM nobel_win
WHERE year='1970'

-- No.13 Write a SQL query to know the winner of the 1971 prize for Literature.
SELECT winner
FROM nobel_win
WHERE subject='Literature'

-- No.14 Write a SQL query to display the year and subject that won 'Dennis Gabor' his prize. 
SELECT year, subject
FROM nobel_win
WHERE winner='Dennis Gabor'

-- No.15 Write a SQL query to give the name of the 'Physics' winners since the year 1950.
SELECT winner
FROM nobel_win
WHERE year> 1950

-- No.16 Write a SQL query to Show all the details (year, subject, winner, country ) of the Chemistry prize winners between the year 1965 to 1975 inclusive
SELECT *
FROM nobel_win
WHERE subject = 'Chemistry' && year >= 1965 && year <= 1975

-- No.17 Write a SQL query to show all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.
SELECT *
FROM nobel_win
WHERE winner IN ('Menachem Begin', 'Yitzhak Rabin') && year>'1972'

-- No.18 Write a SQL query to show all the details of the winners with first name Louis.
SELECT *
FROM nobel_win
WHERE winner LIKE'Louis %'

-- No.19 Write a SQL query to show all the winners in Physics for 1970 together with the winner of Economics for 1971.
SELECT *
FROM nobel_win
WHERE (subject='Physics' AND year='1970') UNION 
SELECT *
FROM nobel_win
WHERE (subject='Economics' AND year='1971')

-- No.20 Write a SQL query to show all the winners of nobel prize in the year 1970 except the subject Physiology and Economics. 
SELECT *
FROM nobel_win
WHERE year='1970' AND subject NOT IN ('Physiology', 'Economics')

-- No.21 Write a SQL query to show the winners of a 'Physiology' prize in an early year before 1971 together with winners of a 'Peace' prize in a later year on and after the 1974. 
SELECT *
FROM nobel_win
WHERE year<'1971' AND subject='Physiology' UNION
SELECT *
FROM nobel_win
WHERE year>'1974' AND subject='Peace'

-- No.22  Write a SQL query to find all details of the prize won by Johannes Georg Bednorz.
SELECT *
FROM nobel_win
WHERE winner='Johannes Georg Bednorz'

-- No.23 Write a SQL query to find all the details of the nobel winners for the subject not started with the letter 'P' and arranged the list as the most recent comes first, then by name in order.
SELECT *
FROM nobel_win
WHERE subject NOT LIKE ('P%')

-- No.24 Write a SQL query to find all the details of 1970 winners by the ordered to subject and winner name; but the list contain the subject Economics and Chemistry at last.
SELECT *
FROM nobel_win
WHERE year='1970'
ORDER BY subject DESC, winner 

-- No.25  Write a SQL query to find all the products with a price between Rs.200 and Rs.600.
SELECT *
FROM item_mast
WHERE pro_price BETWEEN 200 AND 600

-- No.26 Write a SQL query to calculate the average price of all products of the manufacturer which code is 16.
SELECT AVG(pro_price)
FROM item_mast
WHERE pro_com='16'

-- No.27 Write a SQL query to find the item name and price in Rs.
SELECT pro_name, pro_price AS Rs
FROM item_mast
WHERE pro_com='16'

-- No.28 Write a SQL query to display the name and price of all the items with a price is equal or more than Rs.250, and the list contain the larger price first and then by name in ascending order.
SELECT pro_name, pro_price AS Rs
FROM item_mast
WHERE pro_price>=250
ORDER BY Rs DESC, pro_name

-- No.29 Write a SQL query to display the average price of the items for each company, showing only the company code. 
SELECT pro_ID, AVG(pro_price)
FROM item_mast
GROUP BY pro_id

-- No.30  Write a SQL query to find the name and price of the cheapest item(s).
SELECT pro_name, pro_price
FROM item_mast
WHERE pro_price= (SELECT MIN(pro_price) FROM item_mast)

-- No.31 Write a query in SQL to find the last name of all employees, without duplicates.
SELECT DISTINCT emp_lname
FROM emp_details

-- No.32 Write a query in SQL to find the data of employees whose last name is 'Snares'.
SELECT *
FROM emp_details
WHERE emp_lname='Snares'

-- No.33 Write a query in SQL to display all the data of employees that work in the department 57.
SELECT *
FROM emp_details
WHERE emp_dept='57'

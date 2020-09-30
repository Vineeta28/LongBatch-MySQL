use Vineeta_activities;
Select * from orders;

# Activity 7
# Write an SQL statement to find the total purchase amount of all orders.
Select sum(purchase_amount) as TOTAL from orders;

# Write an SQL statement to find the average purchase amount of all orders.
Select avg(purchase_amount) as AVERAGE from orders;

# Write an SQL statement to get the maximum purchase amount of all the orders.
Select max(purchase_amount) as MAXIMUM from orders;

# Write an SQL statement to get the minimum purchase amount of all the orders.
Select min(purchase_amount) as MINIMUM from orders;

# Write an SQL statement to find the number of salesmen listed in the table.
select COUNT(distinct salesman_id) AS "Count" from orders;

# Activity 8

# highest purchase amount ordered by the each customer with their ID and highest purchase amount.
Select customer_id, max(purchase_amount) AS "Max Amount" from orders group by customer_id;

# highest purchase amount on '2012-08-17' for each salesman with their ID
Select salesman_id, order_date, max(purchase_amount) as "max amount" from orders 
where order_date ='2012-08-17' group by salesman_id, order_date;


# Activity 9

-- Insert values into it
use Vineeta_activities;
insert into customers values 
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

describe customers;
describe salesman;

# SQL statement to know which salesman are working for which customer.
SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM customers a 
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

# SQL statement to make a list in ascending order for the customer who holds
# a grade less than 300 and works either through a salesman.

# Select c.customer_name AS "Customer Name", c.city, c.grade, s.salesman from;

 
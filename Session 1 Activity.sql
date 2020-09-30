# Activity 1
create database Vineeta_activities;
use Vineeta_activites;
create table salesman (
salesman_id int primary key,
name varchar(32),
city varchar(32),
commission int);

describe salesman;

# Activity 2 - Inserting values
Insert into salesman values (5001, 'James Hoog','NewYork',15);

Insert into salesman values (5002, 'Nail Knite','Paris',13),
(5005, 'Pit Alex ','London',11),
(5006, 'McLyon ','Paris',14),
(5007, 'Paul Adam','Rome',13),
(5003, 'Lauson Hen','San Jose',12)
;

Select * from Vineeta_activities.salesman;
 
 # Activity3 
use Vineeta_activities;
select salesman_id,city from Vineeta_activities.salesman;
Select * from Vineeta_activities.salesman where city = 'Paris';
Select salesman_id,commission from Vineeta_activities.salesman where name = 'Paul Adam';

# Activity 4
alter table Vineeta_activities.salesman add grade int;
describe Vineeta_activities.salesman;
update Vineeta_activities.salesman set grade = 200;
Select * from Vineeta_activities.salesman;

# Activity 5
#Update the grade score of salesmen from Rome to 200.
Update Vineeta_activities.salesman set grade = 200 where City = 'Rome';
#Update the grade score of James Hoog to 300.
Update Vineeta_activities.salesman set grade = 300 where City = 'James Hoog';
#Update the name McLyon to Pierre.
Update Vineeta_activities.salesman set name = 'Pierre' where name ='McLyon';

# Activity 6
Select * from Vineeta_activities.orders;
# Get all salesman ids without any repeated values
Select distinct salesman_id from Vineeta_activities.orders;
# Display the order number ordered by date in ascending order
Select order_no,order_date from Vineeta_activities.orders order by order_date;
# Display the order number ordered by purchase amount in descending order
Select order_no,purchase_amount from Vineeta_activities.orders order by purchase_amount desc;
# Display the full data of orders that have purchase amount less than 500.
Select * from Vineeta_activities.orders where purchase_amount < 1500;
# Display the full data of orders that have purchase amount between 1000 and 2000.
Select * from Vineeta_activities.orders where purchase_amount between 1000  and 2000;


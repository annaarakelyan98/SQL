/*
table aliases
three types of joins
    .self join
    .the natural join
    .outer join
*/

insert into Customers value (7, 'Alfie', 'Street 5, home 1', 'Paris', 'France', 'alfie@gmail.com');

/*self joining*/
/*table alias*/
SELECT cust_name, cust_country
from Customers as C,
     Orders as O,
     OrderItems as OI
where C.cust_id = O.cust_id
  and O.order_num = OI.order_num
  and prod_id = 'mod5';

/*1/subquery*/
SELECT cust_id, cust_name, cust_email
from Customers
where cust_name = (SELECT cust_name
                   from Customers
                   where cust_email = 'alfie@mail.ru');

/*2/join*/
SELECT C1.cust_id, C1.cust_name, C1.cust_email
from Customers as C1,
     Customers as C2
where C1.cust_name = C2.cust_name
  and C2.cust_email = 'alfie@mail.ru';
/**/

/*natural join*/
SELECT C.*,
       O.order_num,
       O.order_date,
       OI.prod_id,
       OI.quantity,
       OI.item_price
from Customers as C,
     Orders as O,
     OrderItems as OI
where C.cust_id = O.cust_id
  and O.order_num = OI.order_num
  and prod_id = 'mod5';
/**/

/*Outer join*/
SELECT Customers.cust_id, Orders.order_num
from Customers
         inner join Orders on Customers.cust_id = Orders.cust_id
/*order by order_num*/;

/*
left outer join-select
  all rows from left(Customers) table
  and rows that matches, from right(Orders) table
  */
SELECT Customers.cust_id, Orders.order_num
FROM Customers
         LEFT OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id;

/*
right outer join-select
  all rows from right(Orders) table
  and rows that matches, from left(Customers) table
  */
SELECT Customers.cust_id, Orders.order_num
from Customers
         RIGHT JOIN Orders on Customers.cust_id = Orders.cust_id;

/*
FULL OUTER JOIN is not supported in MySQL
SELECT Customers.cust_id, Orders.order_num
FROM Customers
FULL OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id;
*/

/*dzerov grel*/
SELECT Customers.cust_id,
       COUNT(Orders.order_num) AS num_ord
FROM Customers
         INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;

SELECT Customers.cust_id,
       COUNT(Orders.order_num) AS num_ord
FROM Customers
         LEFT OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;







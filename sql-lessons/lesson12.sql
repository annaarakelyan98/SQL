/*
  joins
  */

insert into Products
values ('mod5', 55, 'Teddy bear', '500 dollars', 'playing bear'),
       ('mdf7', 44, 'Anabel doll', '1000 dollars', 'doll'),
       ('kgf5', 5, 'Ann princess', '700 dollars', 'doll'),
       ('koh5', 3, 'McQuin car', '800 dollars', 'car'),
       ('jkh4', 15, 'Bear', '200 dollars', 'bear'),
       ('hgj3', 4, 'Golden tree', '100 dollars', 'tree'),
       ('ghn7', 6, 'Horse Max', '600 dollars', 'horse'),
       ('sdf8', 5, 'Doll house', '8500 dollars', 'house');

insert into Vendors
values (1, 'Disney', '165th St E', 'Los Angeles', 'US'),
       (2, 'PicsArt', '144th St A', 'New York', 'US'),
       (3, 'Lego System', '123th St L', 'Billund', 'Denmark'),
       (4, 'Hasbro Inc.', '158th St A', 'Denmark', 'US'),
       (5, 'Mattel Inc.', '136th St B', 'California', 'US'),
       (6, 'Spin Master', '114th St C', 'Toronto', 'Canada'),
       (7, 'PAI Partners ', '167th St E', 'Paris', 'France');

/*two tables joining*/
SELECT prod_name, prod_price, vend_name
from Products,
     Vendors
where Vendors.vend_id = Products.vend_id;

/*2 table's join example
  .standard or inner join
  .Select all rows from two tables
  that are matches
  */
SELECT vend_name, prod_name, prod_price
from Products
         INNER Join Vendors ON Vendors.vend_id = Products.vend_id
order by vend_name;

/*multiple joining*/
SELECT prod_name, vend_name, prod_price, quantity
from Products,
     Vendors,
     OrderItems
WHERE Vendors.vend_id = Products.vend_id
  and OrderItems.prod_id = Products.prod_id
  and OrderItems.order_num = 522050;

/*lesson 11's example*/
SELECT cust_name, cust_city
from Customers,
     Orders,
     OrderItems
where /*join*/Orders.cust_id = Customers.cust_id
  and /*join*/Orders.order_num = OrderItems.order_num
  and /*filter*/OrderItems.prod_id = 'mod5';

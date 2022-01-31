/*subqueries
   Subqueries are always processed starting
   with the innermost SELECT statement
   and working outward
  */
insert into Orders
values (1, '202050', '10/02/2020'),
       (2, '202020', '7/03/2020'),
       (3, '258620', '12/04/2020'),
       (4, '508560', '25/11/2020'),
       (5, '258625', '10/02/2020');

insert into Orders
    value (6, '202070', '7/03/2020');

insert into Orders
    value (3, '202080', '7/03/2020');

insert into Customers
values (1, 'Alfie', 'Street 9, home 12', 'New York', 'USA', 'alfie@mail.ru'),
       (2, 'Amber', 'Street 11, home 2', 'Milan', 'Italia', 'amber@gmail.com'),
       (3, 'Fabian', 'Street 5, home 26', 'Washington', 'USA', 'fabian@mail.ru'),
       (4, 'Eddie', 'Street 4, home 3', 'London', 'Great Britain', 'eddie@gmail.com'),
       (5, 'Nina', 'Street 8, home 9', 'Berlin', 'Germany', 'nina@mail.ru'),
       (6, 'Patricia', 'Street 9, home 25', 'Paris', 'France', 'paty@mail.ru');

insert into OrderItems
values ('202050', '564', 'mod5', 5, '1000'),
       ('202070', '555', 'mod5', 2, '15000'),
       ('522050', '234', 'kgf5', 5, '100'),
       ('258620', '456', 'ahd5', 5, '500'),
       ('202057', '54', 'mdf7', 4, '3000');

/*1 and 2 do the same, but 1 do it by subqueries*/
/*1*/
SELECT cust_id
from Orders
where order_num in (SELECT order_num
                    from OrderItems
                    where prod_id = 'mod5');
/*2*/
SELECT order_num
FROM OrderItems
WHERE prod_id = 'mod5';

SELECT cust_id
FROM Orders
WHERE order_num IN (202050, 202070);
/**/

/*1*/
SELECT cust_name, cust_country
FROM Customers
WHERE cust_id IN (SELECT cust_id
                  FROM Orders
                  WHERE order_num IN (SELECT order_num
                                      FROM OrderItems
                                      WHERE prod_id = 'mod5'));
/*2*/
SELECT order_num
from OrderItems
where prod_id = 'mod5';

SELECT cust_id
from Orders
where order_num in (202050, 202070);

SELECT cust_name, cust_city
from Customers
where cust_id in (1, 6);/**/

/*orders- as calculated field-quantity of orders for each customer*/
select cust_name,
       cust_country,
       (SELECT COUNT(*)
        from Orders
        where Orders.cust_id = Customers.cust_id) as
           orders
from Customers
order by cust_name;

/*combined queries

SQL also enables you to perform multiple queries (multiple SELECT
statements) and return the results as a single query result set.
These combined queries known as unions or compound queries

UNION-instructs the DBMS to execute both SELECT
      statements and combine the output into a single query result set
*/

INSERT INTO Customers value (8, 'Patricia', 'Street 5,home 42', 'Yerevan', 'Armenia', 'eddicia@mail.ru');

/*these 2 queries in one, by UNION*/
SELECT cust_name, cust_address, cust_city
from Customers
where cust_country IN ('USA', 'France');

SELECT cust_name, cust_address, cust_city
from Customers
where cust_name = 'Patricia';
/**/

/*UNION - eliminate duplicate rows*/
SELECT cust_name, cust_city, cust_address
from Customers
where cust_country IN ('USA', 'France')
UNION
SELECT cust_name, cust_city, cust_address
from Customers
where cust_name = 'Patricia';

/*UNION ALL- return with duplicate rows*/
SELECT cust_name, cust_city, cust_address
from Customers
where cust_country IN ('USA', 'France')
UNION ALL
SELECT cust_name, cust_city, cust_address
from Customers
where cust_name = 'Patricia';

/*ORDER BY-we can use only one ORDER BY clause
           and in it must be after final SELECT statement
  */
SELECT cust_name, cust_city, cust_address
from Customers
where cust_country IN ('USA', 'France')
UNION
SELECT cust_address, cust_city, cust_address
from Customers
where cust_name = 'Patricia'
ORDER BY cust_name, cust_city;

/*  if column names are different-it's result will be
  by first select's column name, but it's result*/
SELECT cust_name, cust_city, cust_address
from Customers
where cust_country IN ('USA', 'France')
UNION
SELECT cust_country, cust_city, cust_address
from Customers
where cust_name = 'Patricia';

/*copy types*/
CREATE TABLE CustCopy AS
SELECT *
FROM Customers;
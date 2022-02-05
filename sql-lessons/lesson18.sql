/*Views
  Views are virtual tables. Unlike tables that contain data, views simply contain queries
that dynamically retrieve data when used.
  Views contain no data themselves, so the data they return is retrieved from
other tables. When data is added or changed in those tables, the views will return that
changed data.

  update view-delete and recreate*/

/*create view*/
/*1*/
CREATE VIEW ProductCustomers AS
SELECT cust_name, cust_email, prod_id
FROM Customers,
     Orders,
     OrderItems
WHERE Orders.cust_id = Customers.cust_id
  AND OrderItems.order_num = Orders.order_num;

SELECT *
FROM ProductCustomers;

SELECT cust_name, cust_email
from ProductCustomers
where prod_id = 'mod5';

/*2*/
Create view VendorLocation AS
SELECT CONCAT(RTRIM(vend_name), ' (', RTRIM(vend_country), ')') AS
           vend_title
from Vendors;

/*delete view*/
DROP VIEW VendorLocation;

SELECT *
from VendorLocation;

/*3 filtering*/
CREATE VIEW CustomerEmailList AS
SELECT cust_id, cust_name, cust_email
FROM Customers
where cust_email IS NOT NULL;

SELECT *
from CustomerEmailList;

/*4 calculated fields*/
CREATE VIEW OrderItemsExpanded AS
SELECT order_num,
       order_item,
       prod_id,
       quantity * item_price as expanded_price
From OrderItems;

SELECT *
from OrderItems
WHERE order_num = 202050;
/*INSERT*/
INSERT INTO Customers(cust_id,
                      cust_name,
                      cust_address,
                      cust_country)
VALUES (100000006,
        'Toy Land',
        '123 Any Street',
        'USA');

/*null select*/
select cust_name
from Customers
where cust_email IS NULL;

select cust_name, cust_country
from Customers
where Customers.cust_city IS NULL;

/*copy rows from Customers, into CustNew*/
INSERT INTO CustNew(cust_id,
                    cust_name,
                    cust_address,
                    cust_city,
                    cust_country,
                    cust_email)
SELECT cust_id,
       cust_name,
       cust_address,
       cust_city,
       cust_country,
       cust_email
FROM Customers;
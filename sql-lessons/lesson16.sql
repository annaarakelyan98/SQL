/*update and delete*/

/*updated only one row
  .if won't check with WHERE,
   it will change whole cust_email column in table

  delete
  .is used for deleting table contents, not table
  .if won't check with WHERE,
   it will delete all rows in table
  */

UPDATE Customers
SET cust_email = 'kim@.com'
WHERE cust_id = '100000006';

/*multiple update
  one SET for all
  separated by comma*/
UPDATE Customers
SET cust_name  = 'Sam Roberts',
    cust_email = 'sam@toyland.com'
WHERE cust_id = 1000000006;

/*delete columns, is to check null value by update*/
UPDATE Customers
SET cust_email = NULL
WHERE cust_id = 1;

/*delete single row*/
DELETE
FROM Customers
WHERE cust_id = 1000000006;
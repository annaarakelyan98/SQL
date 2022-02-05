/*create table by CREATE TABLE
create table with default value*/
CREATE TABLE OrderItems
(
    order_num  INTEGER       NOT NULL,
    order_item INTEGER       NOT NULL,
    prod_id    CHAR(10)      NOT NULL,
    quantity   INTEGER       NOT NULL DEFAULT 1,
    item_price DECIMAL(8, 2) NOT NULL
);

/*many cases default value uses in dates
  MySQL - CURRENT_DATE() or Now()*/

/*update table by ALTER TABLE*/
ALTER TABLE Vendors
    ADD vend_phone CHAR(20);

/*delete table's column by DROP*/
ALTER TABLE Vendors
    DROP COLUMN vend_phone;

/*delete table*/
/*DROP TABLE CustNew;
*/
/*rename table*/
/*RENAME table CustNew TO Cust;
*/
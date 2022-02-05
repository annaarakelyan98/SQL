/*
Transactions

TRANSACTION-A block of SQL statements
ROLLBACK-The process of undoing specified SQL statements
COMMIT-Writing unsaved SQL statements to the database tables
SAVEPOINT-A temporary placeholder in a transaction set to which you can
          issue a rollback (as opposed to rolling back an entire transaction)
.transaction is used for INSERT , UPDATE , and DELETE statements.
.transaction closed when we use COMMIT or Rollback.
  */


/*in MySQL transactions start - START Transactions
*/

/*1 commit transaction, */
START TRANSACTION;

INSERT INTO users
values (3, 'Amber', 'pass');

COMMIT;

/*2 rollback transaction*/
Start transaction;

DELETE
from users
where id = 1;

ROLLBACK;

/*3 delete*/
Start transaction;

DELETE
from users
where id = 3;

COMMIT;

/*4 savepoint*/
START TRANSACTION;

INSERT into users
values (4, 'Ann', 'ann1');

SAVEPOINT save_point_1;

DELETE
from users
where id = 2;

ROLLBACK TO save_point_1;
COMMIT;








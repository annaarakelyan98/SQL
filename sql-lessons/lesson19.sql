/*Procedures

  */

CREATE PROCEDURE getName(In name varchar(10))
begin
    select * from Customers where cust_name = name;
end;

drop procedure getName;

CREATE PROCEDURE MailingListCount()
BEGIN
    SELECT COUNT(*)
    FROM Customers
    WHERE cust_email IS NOT NULL;
end;

call MailingListCount();
call getName('Patricia');
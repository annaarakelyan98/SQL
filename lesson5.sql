/*where - clause*/

/*operators
  AND - and
  OR - or, either
  IN - range of conditions,the same as or
  NOT- except
  */

SELECT Name, Email
from students
where id < 5
  and City = 'London';

/*order by - always after -where */
SELECT Name, Email
from students
where id <= 4
order by Name;

SELECT id, Name, Email
from students
where id < 5
   or id > 10;

/*operators have order
  and- have higher order of evaluation than -or
  but
  ()-parentheses higher than both and,or
  */
SELECT id, Name, City
from students
where (id > 1 or id < 6)
  and City = 'New york';

/*these two examples are the same
  IN operator*/
SELECT id, Name, City
from students
where id in (2, 4)
order by Name;

SELECT id, Name, City
from students
where id = 2
   or id = 4;

/*NOT- always after where clause*/
SELECT Name, Email, City
from students
where NOT City = 'London'
ORDER BY Name;


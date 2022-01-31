/*where- clause keyword*/
/*operators
  =  equal
  <> not equal
  != not equal
  < less than
  <= less than or equal to
  !< not less than
  > greater than
  >= greater than or equal to
  !> not greater than
  BETWEEN - between two values
  IS NULL - is a NULL value*/
INSERT INTO students
values (4, 'Jack', 'Bristow', 'New York', 'jack@mail.ru'),
       (5, 'Ben', 'Rutter', 'London', 'benyboo@gmail.com'),
       (6, 'Eddie', 'Sweet', 'Washington', 'eddicia@mail.ru');

INSERT into students value
    (7, 'Patricia', 'Williamson','','');

SELECT Name, Surname
FROM students
where id < 5;

SELECT Name, City
FROM students
where City != 'London';

SELECT id, Name
from students
where id between 3 and 6;

SELECT id,Name
from students
where students.Email is null;

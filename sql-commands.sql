/*select *
from animal;
select name
from animal;
/*distinct -unique*/
/*SELECT distinct name
from animal;
SELECT DISTINCT name, type
from animal;
SELECT name, type
from animal;*/

insert into Users value ('Anna', 'Arakelyan', 23, 'Abovyan', 'aarakelyan1998@gmail.com');
insert into Users
values ('Arman', 'Arakelyan', 28, 'Erevan', 'aarakelyan1993@gmail.com'),
       ('Artur', 'Arakelyan', 26, 'Abovyan', 'aarakelyan@gmail.com'),
       ('Vard', 'Khuatyan', 28, 'Yerevan', 'khuatyan@gmail.com');

SELECT Name
from Users;

select Name, Surname
from Users;

/*select unique values with surname,age*/
SELECT DISTINCT Surname, Age
from Users;

/*select since 3rd element*/
SELECT Name
from Users
LIMIT 3;

/**/
SELECT Name
from Users
LIMIT 4 OFFSET 5;

/*ordered select*/
SELECT Age
from Users
order by Name;

/*multiple columns order*/
SELECT Name, Surname, Email, Age
from main.Users
order by Age, Email;

/*order by column number*/
SELECT Name, Surname, Email
from Users
order by 3, Name;

/*descending order*/
SELECT Age, Name
from main.Users
order by Name desc, Age;

SELECT Age, Name
FROM Users
order by Name desc, Age desc;
/*Concatenating fields-miacvac field-er
  only database knows fields and columns
  + and || -joining values together
  trim-ktrel
  TRIM()-two sides trim
  RTRIM()-right trim
  LTRIM() - left trim
  AS- column aliases,(column name), for new created column with others
  */

SELECT *
from students;

/*
this two + and || don't work in MySQL
SELECT students.Name  || or + students.City
FROM students
ORDER BY students.Name;
*/

/*in mysql we need keyword CONCAT*/
SELECT CONCAT(students.Name, ' ', students.City)
FROM students
ORDER BY students.Name;

/*trims*/
SELECT CONCAT(TRIM(students.Name), ' ', TRIM(students.City))
FROM students;

/*as - keyword*/
SELECT CONCAT(Name, ' ', Surname) as person
from students;

SELECT Concat(RTrim(name), ' ',
              RTrim(surname)) AS person
FROM students
ORDER BY Name;

/*math operators(ex. *)*/
SELECT name, type, Code, id * Code as new
From shop;
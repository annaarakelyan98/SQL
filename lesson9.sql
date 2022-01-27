/*Aggregate operations
  AVG()-column's average value
  MAX()-column's highest value
  MIN()-column's lowest value
  SUM()-column's values sum
  COUNT()-column's rows count

  DISTINCT- is used with these operators the same,
            except COUNT(*)

  these operations can be used in one SELECT statement
  */

/*average*/
SELECT AVG(Code) as avg_code
From shop;

SELECT AVG(Code) as avg_code
from shop
where Type = 'animal product';

/*count*/
SELECT COUNT(*) as shop_count
from shop;

SELECT COUNT(City) as std_count
from students;

/*max*/
SELECT MAX(Code) as max_code
from shop;

/*min*/
SELECT MIN(Code) as min_code
from shop;

/*sum*/
SELECT SUM(Code * id) as total_sum
from shop
where id < 4;

/*in one*/
SELECT COUNT(*)  as shop_count,
       AVG(Code) as avg_code,
       MAX(Code) as max_code,
       MIN(Code) as min_code
from shop;
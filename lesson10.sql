/*Groups
  GROUP BY-must come after- WHERE
          -and before- ORDER BY

  in this case we use HAVING instead of WHERE(with GROUP BY)
  HAVING-come after grouping
         added in SQL, because WHERE can't work with aggregate functions
  */

SELECT Type, count(*) as quantity
from shop
where Code > 500000
group by Type;

SELECT city, COUNT(id) as id_quantity
from students
group by city
HAVING count(id) > 1;

SELECT Type, count(*) as quantity
from shop
group by Type
having count(*) < 3
order by quantity, Type;
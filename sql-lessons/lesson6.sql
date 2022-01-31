/*
  wildcard-s are special characters for matching part of value.
  case sensitive
  LIKE -operator, technically is predicate, is used ith wildcards
  %-percent sign wildcard, matches multiple characters
  _-underscore wildcard, matches single character
  []-brackets wildcard, matches characters in specified position
  */

insert into shop
values (1, 'Fish', 'sea product', '251536', '1000$ per kilogram'),
       (2, 'Meat', 'animal product', '536479', '500$ per kilogram'),
       (3, 'Milk', 'animal product', '268475', '100$ per liter'),
       (4, 'Bread', 'homemade', '874122', '50$ per peace');

insert into shop value
    (5, 'Water', 'product', '536479', '200$ per kilogram');

insert into shop
values (6, 'Shirt', 'wear', '568641', '1500$'),
       (7, 'Skirt', 'wear', '654812', '2000$');

/*%- there are words before */
SELECT id, Name
from shop
where Type LIKE '%product';

/*%-besides words*/
SELECT id, Name
from shop
where Price LIKE '%per%';

/*%- there are words after */
SELECT id, Name
from shop
where shop.Price LIKE '100$%';

/*%-besides word's letters*/
SELECT Name, type
from shop
where Name LIKE 'M%t';

/*-%-% besides word's and after*/
SELECT Name, type
from shop
where shop.Type LIKE 'a%l%'/*the same as 'a%t'*/;

/*_-quantity is important(200,500)*/
SELECT Name, Code
from shop
where Price LIKE '___$ per kilogram';

/*%-quantity isn't important(1000,500,200)*/
SELECT Name, Code
from shop
where Price LIKE '%$ per kilogram';

/*[]-??*/
SELECT * from shop
where Type LIKE '[f-w]%';

/*
SELECT Name
FROM shop
WHERE Type like '[sa]&';*/

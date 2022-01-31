/*Functions
  case nonsensitive
  portability-any SQL implementation is specific
  //Text manipulation functions
  SUBSTRING()-Extract part of a string
  CONVERT()- data type conversion
  CURDATE()-get current data
  UPPER()-to uppercase
  LOWER()-to lowercase
  LEFT()-Returns characters from left of string
  RIGHT()-Returns characters from right of string
  LENGTH()- Returns the length of a string
  SOUNDEX()-Returns a string’s SOUNDEX value-isn't SQL concept

  //Date and Time Manipulation Functions
  //Numeric Manipulation Functions
  */

SELECT name, UPPER(name) as name_upper
from shop
order by Name;

SELECT name, type, Price
from shop
where soundex(Type) = soundex('animal prudoct');

SELECT CURDATE();


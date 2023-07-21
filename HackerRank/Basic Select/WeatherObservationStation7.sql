#Problem: Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates

#Language: MySQL

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%a' OR 
CITY LIKE '%e' OR
CITY LIKE '%i' OR
CITY LIKE '%u' OR
CITY LIKE '%o';

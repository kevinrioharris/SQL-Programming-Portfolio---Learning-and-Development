#Problem: Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

#Language: MySQL

SELECT DISTINCT CITY 
FROM STATION
WHERE RIGHT(CITY,1) NOT IN ('a','i','e','u','o');

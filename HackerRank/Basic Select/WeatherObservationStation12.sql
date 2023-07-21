#Problem: Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

#Language: MySQL

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('a','i','u','e','o') AND RIGHT(CITY,1) NOT IN ('a','i','u','e','o')

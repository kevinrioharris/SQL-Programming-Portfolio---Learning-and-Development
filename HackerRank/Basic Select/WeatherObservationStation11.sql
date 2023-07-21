#Problem: uery the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

#Language: MySQL

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('a','i','u','e','o') OR RIGHT(CITY,1) NOT IN ('a','i','u','e','o');

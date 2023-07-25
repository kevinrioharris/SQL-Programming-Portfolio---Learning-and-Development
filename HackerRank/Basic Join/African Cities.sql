#Problem: Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
#MySQL

SELECT C.NAME
FROM CITY AS C
LEFT JOIN COUNTRY AS CO
ON C.COUNTRYCODE = CO.CODE
WHERE CONTINENT='Africa';

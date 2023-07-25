#Problem: Given the CITY and COUNTRY tables, query the sum of the populations of all cities 
  #where the CONTINENT is 'Asia'.

#MySQL

SELECT SUM(C.POPULATION)
FROM COUNTRY AS CO
LEFT JOIN CITY AS C
ON CO.CODE = C.COUNTRYCODE
WHERE CO.CONTINENT = 'Asia';

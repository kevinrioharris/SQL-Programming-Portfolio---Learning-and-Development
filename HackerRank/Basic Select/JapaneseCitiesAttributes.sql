#Problem: Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN. 

#Language: MySQL

SELECT * 
FROM CITY
WHERE COUNTRYCODE = "JPN";

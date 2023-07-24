#Problem: Query the average population for all cities in CITY, rounded down to the nearest integer.
#MySQL

SELECT ROUND(AVG(POPULATION))
FROM CITY;

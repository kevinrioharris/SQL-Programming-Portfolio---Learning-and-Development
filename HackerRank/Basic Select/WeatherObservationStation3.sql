#Problem: Query a list of CITY names from STATION for cities that have an even ID number. 

#Language: MySQL

SELECT DISTINCT CITY
FROM STATION
WHERE ID%2 = 0;

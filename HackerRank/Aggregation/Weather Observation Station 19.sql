#Problem: Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
#MySQL

Euclidean Distance : sqrt((p1-q1)^2+(p2-q2)^2)

SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2)+POWER(MAX(LONG_W)-MIN(LONG_W),2)),4)
FROM STATION;

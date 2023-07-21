#Problem: Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.

#MySQL

SELECT 
CASE
WHEN A = B OR A = C OR B = C THEN "Isosceles"
WHEN A = B AND B = C THEN "Equilateral"
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN "Not A Triangle"
ELSE "Scalene"
END AS Type_of_Triangle
FROM TRIANGLES;

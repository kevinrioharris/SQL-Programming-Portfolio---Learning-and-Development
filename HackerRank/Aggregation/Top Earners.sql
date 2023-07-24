#Problem: Write a query to find the maximum total earnings for all employees 
#as well as the total number of employees who have maximum total earnings. 
#Then print these values as  space-separated integers.
#MySQL

SELECT MONTHS*SALARY as Earnings, COUNT(*)
FROM Employee
GROUP BY Earnings
ORDER BY Earnings DESC
LIMIT 1;

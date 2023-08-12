SELECT E1.name 
FROM Employee AS E1 
INNER JOIN  (
    SELECT managerId FROM 
Employee GROUP BY managerId HAVING COUNT(managerId) >= 5) AS E2 
ON E1.id = E2.managerId;

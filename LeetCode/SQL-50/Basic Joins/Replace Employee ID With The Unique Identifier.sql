#MySQL

SELECT Em.unique_id, E.name
FROM Employees AS E
LEFT JOIN EmployeeUNI AS Em
ON E.id=Em.id; 

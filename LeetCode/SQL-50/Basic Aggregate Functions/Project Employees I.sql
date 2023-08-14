SELECT P.project_id, AVG(E.experience_years) as average_years
FROM Project P
LEFT JOIN Employee E
ON P.employee_id = E.employee_id
GROUP BY project_id;

#Problem: write a query to print the company_code, founder name, total number of lead managers, 
  #total number of senior managers, total number of managers, and total number of employees. 
  #Order your output by ascending company_code.

#MySQL

SELECT 
    C.company_code,
    C.founder,
    COUNT(DISTINCT LM.lead_manager_code) AS total_lead_managers,
    COUNT(DISTINCT SM.senior_manager_code) AS total_senior_managers,
    COUNT(DISTINCT M.manager_code) AS total_managers,
    COUNT(DISTINCT E.employee_code) AS total_employees
FROM Company AS C
LEFT JOIN Lead_Manager AS LM ON C.company_code = LM.company_code
LEFT JOIN Senior_Manager AS SM ON LM.lead_manager_code = SM.lead_manager_code
LEFT JOIN Manager AS M ON SM.senior_manager_code = M.senior_manager_code
LEFT JOIN Employee AS E ON M.manager_code = E.manager_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code;

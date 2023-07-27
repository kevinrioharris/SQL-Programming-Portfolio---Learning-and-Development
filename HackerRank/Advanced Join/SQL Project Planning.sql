#MySQL

SELECT StartProject.Start_Date, MIN(EndProject.End_Date) as Project_End
FROM (SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) AS StartProject,
      (SELECT End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) AS EndProject
WHERE StartProject.Start_Date < EndProject.End_Date
GROUP BY StartProject.Start_Date
ORDER BY DATEDIFF(MIN(EndProject.End_Date),StartProject.Start_Date) ASC, StartProject.Start_Date ASC;

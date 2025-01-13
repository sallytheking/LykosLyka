SELECT A.employee_id, A.name
     , count(B.employee_id) as reports_count
     , ROUND(AVG(B.age)) as average_age
  FROM Employees A
LEFT JOIN Employees B ON A.employee_id = B.reports_to
 GROUP
    BY A.employee_id
HAVING count(B.employee_id) > 0
 ORDER
    BY A.employee_id
# Write your MySQL query statement below
SELECT COALESCE(unique_id, NULL) AS unique_id, A.name
  FROM Employees A
  LEFT
  JOIN EmployeeUNI B ON A.id = B.id;

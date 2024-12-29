# Write your MySQL query statement below
SELECT A.name, B.bonus
  FROM Employee A
  LEFT
  JOIN Bonus B ON A.empId = B.empId
 WHERE B.bonus < 1000
    OR B.bonus IS NULL;
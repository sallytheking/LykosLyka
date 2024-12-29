# Write your MySQL query statement below
SELECT MAX(NUM) AS num
  FROM (
    SELECT *
      FROM MyNumbers
     GROUP
        BY num
    HAVING COUNT(num) < 2
) AS sub;
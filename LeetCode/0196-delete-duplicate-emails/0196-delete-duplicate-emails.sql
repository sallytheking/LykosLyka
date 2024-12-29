# Write your MySQL query statement below
DELETE 
  FROM person
 WHERE id NOT IN
 (SELECT min_id
    FROM (
        SELECT MIN(id) AS min_id
          FROM person
         GROUP
            BY email
    ) AS subquery
 );
# Write your MySQL query statement below
SELECT machine_id
     , ROUND(AVG(time), 3) AS processing_time
  FROM (
    SELECT 
    machine_id, process_id, (MAX(timestamp) - MIN(timestamp)) AS time
    FROM Activity
    GROUP BY machine_id, process_id
  ) AS sub
GROUP
   BY machine_id

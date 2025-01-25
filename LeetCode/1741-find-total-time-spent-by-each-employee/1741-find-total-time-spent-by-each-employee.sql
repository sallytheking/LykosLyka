# Write your MySQL query statement below
# 재실시간: TOTAL_TIME
WITH time AS
(
SELECT (out_time - in_time) AS time, emp_id, event_day    
  FROM Employees)

SELECT event_day as day
,      emp_id
,      sum(time) as total_time
  FROM time
  GROUP BY day, emp_id
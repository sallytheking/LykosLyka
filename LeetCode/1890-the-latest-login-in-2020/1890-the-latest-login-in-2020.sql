# Write your MySQL query statement below
WITH cte AS
(
    SELECT user_id, time_stamp
    FROM Logins
    WHERE YEAR(time_stamp) = 2020

)

SELECT 
    user_id,
    MAX(time_stamp) AS last_stamp
FROM cte
GROUP BY user_id;

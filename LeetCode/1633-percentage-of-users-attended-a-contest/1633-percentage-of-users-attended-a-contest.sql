SELECT 
    B.contest_id, 
    ROUND(COUNT(DISTINCT B.user_id) * 1.0 / (SELECT COUNT(DISTINCT user_id) FROM Users) * 100, 2) AS percentage
FROM Register B
JOIN Users A ON A.user_id = B.user_id
GROUP BY B.contest_id
ORDER BY percentage DESC, B.contest_id;

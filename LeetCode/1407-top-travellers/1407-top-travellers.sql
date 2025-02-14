# Write your MySQL query statement below
SELECT
    A.name,
    COALESCE(SUM(B.distance), 0) AS travelled_distance
FROM Users A
LEFT JOIN Rides B
ON A.id = B.user_id
GROUP BY A.id
ORDER BY 2 DESC, 1 ASC;
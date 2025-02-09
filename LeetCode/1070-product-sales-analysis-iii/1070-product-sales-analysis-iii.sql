# Write your MySQL query statement below

WITH cte AS
(
    SELECT
        product_id,
        MIN(year) AS first_year,
        quantity,
        price
    FROM Sales
    GROUP BY product_id 
)

SELECT
    S.product_id,
    C.first_year,
    S.quantity,
    S.price
FROM Sales S
JOIN CTE C
ON S.product_id = C.product_id
AND S.year = C.first_year;
# Write your MySQL query statement below
# 첫번째 연도 먼저 뽑고 합치기

With first AS
(
 SELECT 
        product_id,
        MIN(YEAR) OVER(PARTITION BY PRODUCT_ID) AS first_year,
        quantity,
        price
    FROM
        Sales
)
    
SELECT
    DISTINCT a.product_id,
    b.first_year,
    a.quantity,
    a.price
FROM Sales a
JOIN first b
ON a.product_id = b.product_id
AND a.year = b.first_year;



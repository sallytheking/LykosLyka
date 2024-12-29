# Write your MySQL query statement below
SELECT B.product_name, A.year, A.price
  FROM Product B
  JOIN Sales A ON A.product_id = B.product_id;
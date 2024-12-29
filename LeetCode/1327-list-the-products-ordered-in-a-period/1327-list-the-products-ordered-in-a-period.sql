# Write your MySQL query statement below
SELECT A.product_name, SUM(B.unit) as unit
  FROM Products A
  LEFT
  JOIN Orders B ON A.product_id = B.product_id
WHERE B.order_date >= '2020-02-01' AND B.order_date <= '2020-02-29'
 GROUP
    BY A.product_name
HAVING SUM(B.unit) >= 100;
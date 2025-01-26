WITH Q1 AS
(
SELECT A.product_id, A.product_name
  FROM Product A
  JOIN Sales B ON A.product_id = B.product_id
 WHERE B.sale_date between '2019-01-01' AND '2019-03-31'
)
, NO_Q1 AS
(
SELECT A.product_id, A.product_name
  FROM Product A
  JOIN Sales B ON A.product_id = B.product_id
 WHERE NOT B.sale_date between '2019-01-01' AND '2019-03-31'
)

SELECT DISTINCT product_id, product_name
  FROM Q1
  WHERE product_id NOT IN (SELECT NO_Q1.product_id FROM NO_Q1);
  
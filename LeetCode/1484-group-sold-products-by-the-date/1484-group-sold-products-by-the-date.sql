# Write your MySQL query statement below
WITH N AS(
 SELECT count(DISTINCT product) AS num_sold, sell_date
          FROM Activities
         GROUP
            BY sell_date
)
, P AS(
        SELECT sell_date, GROUP_CONCAT(DISTINCT product ORDER BY product ASC) AS products
         FROM Activities
        GROUP
           BY sell_date
)

SELECT A.sell_date
     , N.num_sold
     , P.products
FROM (SELECT DISTINCT sell_date FROM Activities) A
  LEFT
  JOIN N ON A.sell_date = N.sell_date
  LEFT
  JOIN P ON A.sell_date = P.sell_date
 ORDER
    BY A.sell_date;

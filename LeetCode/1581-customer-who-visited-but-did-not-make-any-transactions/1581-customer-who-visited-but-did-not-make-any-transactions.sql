# Write your MySQL query statement below
SELECT A.customer_id
     , count(A.visit_id) AS count_no_trans
  FROM Visits A 
--   LEFT
--   JOIN Transactions B ON A.visit_id = B.visit_id
 WHERE A.visit_id NOT IN (
    SELECT visit_id
      FROM Transactions)
 GROUP
    BY A.customer_id;

# Write your MySQL query statement below
WITH cte AS
(
    SELECT
        account,
        sum(amount) AS balance
    FROM Transactions
    GROUP BY account
    HAVING SUM(amount) > 10000
)

SELECT
    A.name AS NAME,
    C.balance AS BALANCE
FROM cte C
JOIN Users A
ON A.account = C.account;


# Write your MySQL query statement below
#buy: operation_day*price + sell: - (operation_day*price)
WITH calculation AS
(
    SELECT stock_name, SUM(CASE WHEN operation = 'Buy' THEN -(price) 
                 WHEN operation = 'Sell' THEN price
    END) AS balance
    FROM Stocks
    GROUP BY stock_name
)


SELECT stock_name, SUM(balance) AS capital_gain_loss
FROM calculation
GROUP BY stock_name;
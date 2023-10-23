# Write your MySQL query statement below
SELECT 
    res.product_id,
    IF(res.average_price IS NOT NULL, average_price, 0) AS average_price
    
FROM 
(
SELECT 
    p.product_id,
    IFNULL(ROUND(SUM(p.price * u.units)/SUM(u.units), 2), 0) AS average_price 
FROM Prices p
INNER JOIN UnitsSold u
    ON p.product_id = u.product_id
WHERE u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id
)res

UNION

SELECT product_id, 0
FROM Prices
WHERE product_id NOT IN (SELECT product_id FROM UnitsSold)
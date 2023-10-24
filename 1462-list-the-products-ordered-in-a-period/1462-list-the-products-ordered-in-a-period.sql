# Write your MySQL query statement below
SELECT
    product_name,
    SUM(unit) AS unit
FROM Products p
INNER JOIN Orders o
    ON p.product_id = o.product_id
WHERE EXTRACT(Month FROM o.order_date) = "02" 
AND EXTRACT(Year FROM o.order_date) = "2020"
GROUP BY 1
HAVING unit >= 100
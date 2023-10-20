# Write your MySQL query statement below
SELECT 
    max(num) AS num
FROM
(
    SELECT
        num,
        COUNT(num) AS Count
    FROM MyNumbers
    GROUP BY num
    HAVING Count = 1
) a
LIMIT 1;


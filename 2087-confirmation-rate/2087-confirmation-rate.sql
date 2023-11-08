# Write your MySQL query statement below
WITH total AS(
    SELECT 
        COALESCE(Signups.user_id) AS user_id,
        COUNT(CASE WHEN action = "confirmed" THEN 1 ELSE NULL END) AS numerator,
        COUNT(*) AS denominator
    FROM Signups
    LEFT JOIN Confirmations
        ON Signups.user_id = Confirmations.user_id
    WHERE Signups.user_id IS NOT NULL
    GROUP BY 1
)

SELECT
    total.user_id,
    ROUND(numerator / denominator, 2) AS confirmation_rate 
FROM total
GROUP BY 1
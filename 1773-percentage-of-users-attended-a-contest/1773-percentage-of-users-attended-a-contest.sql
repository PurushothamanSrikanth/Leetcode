# Write your MySQL query statement below
WITH total_user AS (
    SELECT
        COUNT(*) as count
    FROM Users
)

SELECT
    contest_id, ROUND(COUNT(DISTINCT user_id)*100/total_user.count,2) AS percentage
FROM Register, total_user
GROUP BY contest_id
ORDER BY percentage DESC, contest_id
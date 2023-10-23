# Write your MySQL query statement below
SELECT 
c.class
FROM(
SELECT
    class,
    COUNT(*) as cnt
FROM Courses
GROUP BY class) c
WHERE c.cnt >= 5;
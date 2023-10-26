# Write your MySQL query statement below
SELECT
*
FROM Users
WHERE mail RLIKE "^[A-Za-z]+[A-Za-z-._0-9]*@leetcode[.]com" > 0
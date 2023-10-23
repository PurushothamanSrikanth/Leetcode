# Write your MySQL query statement below

SELECT
employee_id,
CASE
    WHEN COUNT(*) = 1 THEN department_id
    WHEN COUNT(*) > 1 THEN MAX(CASE WHEN primary_flag = "Y" THEN department_id END)
END AS department_id
FROM employee
GROUP BY 1
HAVING department_id IS NOT NULL
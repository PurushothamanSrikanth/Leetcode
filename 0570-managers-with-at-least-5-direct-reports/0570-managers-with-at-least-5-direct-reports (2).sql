SELECT
e.name
FROM Employee e
INNER JOIN Employee e1
WHERE e.id = e1.managerId
HAVING COUNT(e1.managerId) >= 5

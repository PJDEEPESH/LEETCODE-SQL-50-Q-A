SELECT e2.name 
FROM Employee e1
JOIN Employee e2 ON e1.managerId = e2.id
GROUP BY e2.id, e2.name  -- Group by both ID and name
HAVING COUNT(e1.id) >= 5;

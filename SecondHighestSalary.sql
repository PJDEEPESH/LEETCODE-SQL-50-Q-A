SELECT COALESCE(
  (SELECT MAX(salary) FROM Employee AS t2 WHERE t2.salary < (SELECT MAX(salary) FROM Employee)),
  NULL
) AS SecondHighestSalary;

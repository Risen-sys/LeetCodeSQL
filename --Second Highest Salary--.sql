--Second Highest Salary--
SELECT MAX(Salary) AS SecondHighestSalary 
FROM Employee 
WHERE salary NOT IN (SELECT MAX(Salary) FROM Employee);
SELECT  d.name    AS Department
       ,e1.name   AS Employee
       ,e1.salary AS Salary
FROM employee e1
JOIN department d
ON e1.departmentId = d.id
WHERE salary IN ( SELECT distinct top 3 e2.salary FROM employee e2 WHERE e1.departmentId = e2.departmentId ORDER BY e2.salary desc )

SELECT  department.name    AS Department
       ,employee1.name   AS Employee
       ,employee1.salary AS Salary
FROM employee e1
JOIN department d
ON employee1.departmentId = department.id
WHERE salary IN ( SELECT distinct top 3 employee2.salary 
                 FROM employee e2 
                 WHERE employee1.departmentId = employee2.departmentId 
                 ORDER BY employee2.salary desc )

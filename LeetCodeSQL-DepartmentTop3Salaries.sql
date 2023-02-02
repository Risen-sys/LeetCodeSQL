select d.name as Department, e1.name as Employee, e1.salary as Salary from employee e1 join department d on e1.departmentId=d.id
where salary in ( select distinct top 3 e2.salary
from employee e2 where e1.departmentId=e2.departmentId
order by e2.salary desc )
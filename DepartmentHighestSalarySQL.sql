Select department.name as Department
        , Employee.name as Employee
        , Employee.Salary as Salary
From Employee
Join Department
On Employee.DepartmentId = Department.id
Where Salary = (
    Select MAX(salary)
    From Employee
    Where Employee.departmentId = Department.id
)
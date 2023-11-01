Create Database SqlTask1

use SqlTask1

Create Table Departments
(
name nvarchar(50) Not Null,
id int identity primary key,
Constraint CK_Departments_name Check(LEN(name)>2)
)

Create Table Employees
(
Id int identity primary key,
FullName nvarchar(100) Not Null,
Salary int,
Email nvarchar(100) Not Null Unique,
DepartmentId int Foreign Key References Departments(id),
Constraint CK_Employees_salary Check(salary>0),
Constraint CK_Employees_fullname Check(LEN(FullName)>=3)
)




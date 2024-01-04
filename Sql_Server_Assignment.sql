create database CompanyDB;
use CompanyDB;

create table Departments(
	DepartmentID int primary key,
	DepartmentName varchar(50),

);




create table Employees(
EmployeeID int primary key,
FirstName varchar(50),
LastName varchar(50),
DepartmentID int foreign key
references Departments(DepartmentID),
Salary decimal(10, 2)
);

alter table Employees add
HireDate datetime;

select * from Employees;
select * from Departments;


insert into Departments(DepartmentID,DepartmentName)
values(1, 'IT'),
(2, 'Marketing'),
(3, 'Research and Development'),
(4, 'Operations'),
(5, 'Finance'),
(6, 'Production'),
(7, 'Administration'),
(8, 'Public Relations');



insert into Employees(EmployeeID,FirstName,LastName,DepartmentID,Salary,HireDate)
values(1, 'Talha', 'Shehzore Khan', 1, 80000.00, '2015-08-25 10:30:20'),
(2, 'Uzair', 'Tariq', 5, 50000.00, '2018-10-15 11:30:40'),
(3, 'Shahood', 'Ali', 2, 60000.00, '2017-06-20 09:30:50'),
(4, 'Ebad', 'uddin', 7, 100000.00, '2010-05-05 08:00:10'),
(5, 'Waqas', 'Ali', 1, 90000.00, '2015-08-25 10:30:20'),
(6, 'Hammad', 'Sheaikh', 3, 70000.00, '2013-07-18 12:50:05'),
(7, 'Sameer', 'Faisal', 8, 110000.00, '2008-04-02 10:30:35'),
(8, 'Ali', 'Khan', 4, 45000.00, '2024-01-02 11:30:18'),
(9, 'Asad', 'Khan', 6, 65000.00, '2020-02-14 10:40:28'),
(10, 'Zain', 'Khan', 7, 70000.00, '2021-09-14 10:30:20');



Update the salary of employees in the IT department
(assuming IT has DepartmentID 1) to increase it by 10%.

select * from Employees;

update Employees set Salary = ((Salary/100)*10) + Salary
where DepartmentID = 1;

select * from Employees as e join
Departments as d on e.DepartmentID =
d.DepartmentID where e.DepartmentID = 1;



Delete the records of employees whose salaries are less than
30000.

delete from Employees where Salary<30000;


Select Data using INNER JOIN:

select * from Employees as e inner join
Departments as d on e.DepartmentID = d.DepartmentID;


Write a SQL query to retrieve the FirstName, LastName,
DepartmentName, and Salary of employees by joining the Employees and
Departments tables.

select FirstName,LastName,DepartmentName,Salary
from Employees as e join Departments as d
on e.DepartmentID = d.DepartmentID;

Select Data using LEFT JOIN:

select * from Employees as e left join Departments as d
on e.DepartmentID = d.DepartmentID;

Write a SQL query to retrieve all departments and the number
of employees in each department, even if there are no employees in that
department.


select d.DepartmentName, COUNT(e.EmployeeID) as 'Total No of Employee'
from Departments as d left join Employees as e
on d.DepartmentID = e.DepartmentID
group by d.DepartmentName;


Select Data using WHERE and JOIN:
Write a query to select the FirstName, LastName, and
HireDate of employees who were hired after '2023-01-01'.

select FirstName, LastName, HireDate,
DepartmentName from Employees as e join
Departments as d on e.DepartmentID =
d.DepartmentId where HireDate > '2023-01-01';
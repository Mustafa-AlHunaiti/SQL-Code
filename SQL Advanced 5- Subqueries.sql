/*
Subqueries (in the Select, From, and Where Statement)
Subqueries are often called inner queries or nested queries and they're basically a query within a query 
is used to return data that will be used in the main query or the outer query as a condition to specify 
the data that we want retrieved 
you can use Subqueries almost anywhere you can use it in the select part of a query, the from and the where
you can also use it in insert, update and delete statements 
*/


-- let's take a look ate the table that we're working in 
Select EmployeeID, JobTitle, Salary
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
From EmployeeSalary

-- How to do it with Partition By
Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
From EmployeeSalary

-- Why Group By doesn't work
Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
From EmployeeSalary
Group By EmployeeID, Salary
order by EmployeeID


-- Subquery in From

Select a.EmployeeID, AllAvgSalary
From 
	(Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	 From EmployeeSalary) a
Order by a.EmployeeID


-- Subquery in Where


Select EmployeeID, JobTitle, Salary
From EmployeeSalary
where EmployeeID in (
	Select EmployeeID 
	From EmployeeDemographics
	where Age > 30)





/*
CTEs (Common Table Expressions)
a CTE is a Common Table Expression and it's a named temporary result set that is used to manipulate the complex subqueries data
now this only exists within the scope of the statement that we're about to write once we cancel out of this query it's like it never existed 

CTEs is also only created in memory rather than a tempdb file like a temp table  would be 
but in general a CET acts very much like a subquery

CTEs sometimes called with queries that's because this with statement right the very beginning  
*/


-- it's going to place it to where we can now query off this data so it's putting it basically in a temporary place where we can then go and grab that data 
WITH CTE_Employee AS -- we have to construct our select statement 
(SELECT FirstName,LastName, Gender, Salary -- build out our quote-unquote  subquery
, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
, AVG(Salary) OVER (PARTITION BY Salary) AS AvgeSalary
FROM SQLTutorial.dbo.EmployeeDemographics emp
JOIN SQLTutorial.dbo.EmployeeSalary sal
   ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > 45000
)
SELECT * -- this select everything from CTE_Employee we are selecting everything from above select statement and so this feels a lot like a temp table we were actually querying off a temp table but it actually acts a lot more like a subquery 
FROM CTE_Employee



WITH CTE_Employee AS -- we have to construct our select statement 
(SELECT FirstName,LastName, Gender, Salary -- build out our quote-unquote  subquery
, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
, AVG(Salary) OVER (PARTITION BY Salary) AS AvgeSalary
FROM SQLTutorial.dbo.EmployeeDemographics emp
JOIN SQLTutorial.dbo.EmployeeSalary sal
   ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > 45000
)
SELECT FirstName, AvgeSalary
FROM CTE_Employee

/*Note: CTE is not stored anywhere and so it's not stored in some temp database  womewhere if we try to run this 
block of code
(
SELECT FirstName, AvgeSalary
FROM CTE_Employee
)
by itself it is not going to work 
and that's because each time we run this query is actually creating the CTE again
and so it's not being saved anywhere and so each time we run it with the entire CTE
another thing to note is you actually have to put the select statement right after the CTE 
*/




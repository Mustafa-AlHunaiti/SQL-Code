/*
Stored Procedures
is a group of SQL statements that has been created and then stored in that database
a Stored Procedure can accept input parameters that means that a single stored Procedure can be used over the network by several different users
and we can all be using different input data a Stored Procedure will also reduce network traffic and increase the performance and lastly if we modify that Stored Procedure
everyone who uses that Stored Procedure in the future will also get that update 
*/


CREATE PROCEDURE Temp_Employee
AS
DROP TABLE IF EXISTS #Temp_Employee
CREATE TABLE #Temp_Employee (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial ]..EmployeeDemographics emp
JOIN [SQL Tutorial ]..EmployeeSalary sal
   ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle


SELECT *
FROM #Temp_Employee

EXEC Temp_Employee






CREATE PROCEDURE Temp_Employee2
@JobTitle nvarchar(100)
AS
DROP TABLE IF EXISTS #temp_employee
CREATE TABLE #Temp_Employee (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial ]..EmployeeDemographics emp
JOIN [SQL Tutorial ]..EmployeeSalary sal
   ON emp.EmployeeID = sal.EmployeeID
WHERE JobTitle = @JobTitle -- make sure to change this in this script from original above
GROUP BY JobTitle


SELECT *
FROM #Temp_Employee

exec Temp_Employee2 @jobtitle = 'Salesman'
exec Temp_Employee2 @jobtitle = 'Accountant'

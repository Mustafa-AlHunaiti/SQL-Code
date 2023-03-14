/*
Select Statements
*, Top, Distinct, Count, As, Max, Min, Avg
*/



/*
Table 1 Query:
Select all columns and rows from EmployeeDemographics
*/
SELECT *
FROM EmployeeDemographics



/*
choice specific columns from EmployeeDemographics
*/
SELECT FirstName, LastName
FROM EmployeeDemographics



/*
choice all columns and first 5 rows from EmployeeDemographics
*/
SELECT TOP 5 *
FROM EmployeeDemographics



/*
return all unique values from EmployeeDemographics
*/
SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

SELECT DISTINCT(Gender)
FROM EmployeeDemographics



/*
Return the number of rows that matches a specified criterion.
Notice that the column return without a name. 
To make it back with a name the only thing you must do is add AS command(Alias for Columns) for example COUNT(LastName) AS LastNameCount
*/
SELECT COUNT(LastName)
FROM EmployeeDemographics

SELECT COUNT(LastName) AS LastNameCount 
FROM EmployeeDemographics



/*
Table 2 Query:
Return MAX, MIN and  AVG(average) from specific column 
*/
SELECT MAX(Salary)
FROM EmployeeSalary

SELECT MIN(Salary)
FROM EmployeeSalary

SELECT AVG(Salary)
FROM EmployeeSalary



/*
the last thing I want to tell you is if you use the master database and you want to use a table from a different database you will use this syntax
SELECT *
FROM <DataBaseName>.<schema>.<TableName>
*/
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary


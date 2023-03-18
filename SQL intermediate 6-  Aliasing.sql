/*
Aliasing
all Aliasing really is temporarily changing the column name or the table name in your script and it's not really gonna impact your output at all Aliasing is 
really used for the readability of your script 
*/
             ------------------------- Aliasing column names ---------------------------------------

-- rename FirstName column which it was originally named to Fname
-- you can use AS or don't use it, it's the same. see the two codes below 
SELECT FirstName AS Fname
FROM EmployeeDemographics

SELECT FirstName  Fname
FROM EmployeeDemographics



-- we have a first name and a last name in this column, we want to combine those and give an alias as full name
SELECT FirstName + ' ' + LastName FullName
FROM EmployeeDemographics



-- another time that you're often going to use Aliasing in the select statement is when using aggregate functions 
SELECT AVG(Age) AS AvgAge
FROM EmployeeDemographics


             ------------------------- Aliasing table names ---------------------------------------
                                                 
SELECT Demo.EmployeeID, Sal.Salary -- need to preface your column name with a table name or the table alias dot and then EmployeeID
FROM [SQL Tutorial ].dbo.EmployeeDemographics AS Demo
JOIN [SQL Tutorial ].dbo.EmployeeSalary AS Sal
   ON Demo.EmployeeID = Sal.EmployeeID



-- the query below it's not good that's because the alias doesn't give us a meaningful name 

SELECT a.EmployeeID, a.FirstName, a.LastName, b.JobTitle, c.Age
FROM SQLTutorial.dbo.EmployeeDemographics a
LEFT JOIN SQLTutorial.dbo.EmployeeSalary b
   ON a.EmployeeID = b.EmployeeID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics c
   ON a.EmployeeID = c.EmployeeID


-- now it's looking an example of what it should look like 

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
FROM SQLTutorial.dbo.EmployeeDemographics Demo
LEFT JOIN SQLTutorial.dbo.EmployeeSalary Sal
   ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics Ware
   ON Demo.EmployeeID = Ware.EmployeeID   

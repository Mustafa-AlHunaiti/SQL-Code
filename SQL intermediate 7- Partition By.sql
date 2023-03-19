/*
Partition By
is often comapared to the group by statement 
Partition By divides the result set into partiition and changes how the window function is calculated 
*/

/*
so in our output for code below we can see Pam Beasley she's female she makes 36000 as a salary and there are three total women that work alongside her in 
this EmployeeDemographics table and so in our TotalGender column this is where we use the partition by and if we use a group by to get this kind of information 
all we would be able to do to get this information in a group by statement is say
block of code
(
SELECT Gender, COUNT(Gender) AS CountGender 
FROM SQLTutorial.dbo.EmployeeDemographics demo 
JOIN SQLTutorial.dbo.EmployeeSalary sal
   ON demo.EmployeeID = sal.EmployeeID
GROUP BY Gender
)
so because we're usingthe partition by we're able to isolate just one column that we want to perform our aggregate function on and so we're able to add things 
like (FirstName, LastName) columns even though we aren't trying to include that in any partition or group by statement yet we're still able to add the aggregate function
to each individual row while still maintaining those other columns 
*/

-- Partition By
SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender 
FROM SQLTutorial.dbo.EmployeeDemographics demo 
JOIN SQLTutorial.dbo.EmployeeSalary sal
   ON demo.EmployeeID = sal.EmployeeID
   
   
   
-- Group By  
SELECT Gender, COUNT(Gender) AS CountGender 
FROM SQLTutorial.dbo.EmployeeDemographics demo 
JOIN SQLTutorial.dbo.EmployeeSalary sal
   ON demo.EmployeeID = sal.EmployeeID
GROUP BY Gender







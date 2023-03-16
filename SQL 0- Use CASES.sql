

----------------------------------- USE CASES ------------------------------------------------------
/*
Robert California is pressuring Michael Scott to meet his quarterly quota 
and Michael Scott is almost there he needs a thousand more dollars and 
he comes up with the genius idea to deduct pay for the highest-paid employee at his branch beside himself 
so how does he go about doing this identifying the person that makes the most money 
*/

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC










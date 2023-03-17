

                            ----------------------------------- USE CASES ------------------------------------------------------
/*
1- use case: Robert California is pressuring Michael Scott to meet his quarterly quota 
   	     and Michael Scott is almost there he needs a thousand more dollars and 
             he comes up with the genius idea to deduct pay for the highest-paid employee at his branch beside himself 
             so how does he go about doing this identifying the person that makes the most money 
*/
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael' AND LastName <> 'Scott' -- we want to do it where it's not Michael Scott and that's because Michael Scott doesn't want to take away his own money he wants to take away his employees money 
ORDER BY Salary DESC



/*
2- use case: Kevin Malone who is an accountant thinks that he may have made a mistake when looking at the average salary for our salesmen
	     now Angela Martin is very good at SQL and so what she is gonna do is she wants to go in and calculate the average salary for our salesmen  
*/
SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle








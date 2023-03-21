

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




/*
3- use case: so now we have our employees and in JobTitle the situation of employees,
             we had a fantastic year this year selling paper, and corporate has allowed Michael Scott to give out a yearly raise to every single employee 
	     but not every employee is gonna get the same raise because our salesmen are genuinely the people who made us our money and
	     they're getting the biggest raises while other people aren't gonna get into that big of a raise
             calculate what their salary will be after they get their raise  
*/
SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10) -- we want to give Salesman a 10% raise this year 
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05) -- we want to give Accountant a 5% raise this year
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001) -- we want to give HR a .0001% raise this year
	ELSE Salary + (Salary * .03) -- we want to give everyone else a 3% raise this year
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary
   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID





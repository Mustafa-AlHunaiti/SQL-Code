/*
Having Clause
*/

-- we want to have jobs that have more than one employee for the job title 
SELECT JobTitle, COUNT(JobTitle) AS CountJobTitle
FROM EmployeeDemographics
JOIN EmployeeSalary 
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1



-- we're looking at the job titles that have an average salary of over 45000 dollars 
SELECT JobTitle, AVG(Salary) AS AvgSalary
FROM EmployeeDemographics
JOIN EmployeeSalary 
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AvgSalary DESC 

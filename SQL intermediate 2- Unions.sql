/*
Union, Union All
*/

/*
union and joins are somewhat similar and are closely related because they're combining two tables to create one output.
now waht's difference the difference is that a join combines both tables based off a common column and
with a union, you're able to select all the data from both tables and put it into one output where all the data is in each column, and
not separate it and you don't have to chooce which table you're choosing it from 
*/
-- first of all, added one more table and inserted his values 
-- Table 3 Query:
Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

-- Table 3 Insert:
Insert into WareHouseEmployeeDemographics VALUES
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female'),
(1013, 'Darryl', 'Philbin', NULL, 'Male')


-- two tables have exact same columns it make the process easier  
-- union combines two tables in one table and removes duplicate
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics


-- union all combines two tables into one table and keep duplicate
-- union all showing just the data as is
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID
/*
the only reason why it works so well is that those two tables were the exact same (EmployeeID, FirstName, LastName, Age, Gender)
they're basically the same tables just with different information so it made it really easy  
*/




/*
why does the code below work? well first off the reason it's working is because these data type for 3 column are the exact same or at least similar so
text to text(FirstName, JobTitle) integer to integer(Age, Salary) and it has the same amount or column(3 from EmployeeDemographics and 3 from EmployeeSalary)
but if you notice the data in the output for First Name and Age columns you will see the data for FirstName and JobTitle in FirstName column overlapping and
the same thing for age and salary in age column.
so you want to be careful when you're using a union to combine two separate tables and make sure that the data you're selecting is the same 
*/
SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial ].dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial ].dbo.EmployeeSalary












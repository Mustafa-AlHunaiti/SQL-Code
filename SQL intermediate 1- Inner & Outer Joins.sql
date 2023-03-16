/*
Inner Joins, Full/Left/Right  Outer Joins
*/
-- a join is a way to combine multiple tables into a single output 
-- first of all, I added these values to my tables 1- EmployeeDemographics 2- EmployeeSalary

-- Table 1 
INSERT INTO EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(Null, 'Holly', 'Flax', Null, Null),
(1013, 'Darryl', 'philbin', Null, 'Male')

-- Table 2 
INSERT INTO EmployeeSalary  VALUES
(1010, Null, 47000),
(Null, 'Salesman', 43000)


/*
so now if you notice they have a similar column and that's going to be the EmployeeID column  
now when you're doing a join you have to do this based off a similar column and typically you want to be a unique column  
so we're gonna be using the EmployeeID column  from both tables to join these tables together to create one output 
*/

-- start building our query to join these two tables together
-- first thing we're gonna do is an inner join 

-- the two codes below  will give you the same output 
SELECT *
FROM [SQL Tutorial ].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial ].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID -- join them together which is what we talked about above we're going to be doing that based off the EmployeeID

SELECT *
FROM [SQL Tutorial ].dbo.EmployeeDemographics
JOIN [SQL Tutorial ].dbo.EmployeeSalary -- join by default is gonna say inner 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


![join](https://user-images.githubusercontent.com/83397235/225597700-d37b385a-a097-4803-920d-03886f43dad8.png)





















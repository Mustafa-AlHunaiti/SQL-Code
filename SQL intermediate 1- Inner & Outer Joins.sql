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
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID -- join them together which is what we talked about above we're going to be doing that based off the EmployeeID

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary -- join by default is gonna say inner 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
first of all, before we talk about the codes below keep the image in the readme file with you.

the difference between the 4 codes below is

Code 1- in the inner join is actually returns both tables combined.
	inner join is really only going to show everything that is the same so in both tables there are EmployeeID of 1001 all the way down to 1009
	but if you notice there is data that is missing 
	so inner join is going to show everything that is common or overlapping between table A and table B
*/	
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
   
/*   
Code 2- so if you notice the output is very different so why it's so different?
	if you notice everything down till 1009 is the exact same for two tables so employees 1001 down to 1009 are exactly the same but once we get down to row 10 
	it starts to get different if you look at the image look at the full outer join what is saying is we are gonna show everything from table A and table B regardless
	of if it has a match based on what we were joining them on so even if table A has an EmployeeID but there's no EmployeeID in table B we're still showing it and vice versa
*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/*   
Code 3- left outer join is gonna take the left table and say we want everything from the left table and everything that's overlapping 
	but if it's only in the right table we do not want it so we're gonna look at everything in the EmployeeDemographics table regardless
	of whether or not it has a match on the EmployeeID in the EmployeeSalary table 
*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/*   
Code 4- same concept for Code 3 but for EmployeeSalary (exact opposite)
*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/* 
now why the code below not working, it's not working because we have two columns one in each of these tables and we have to specify what EmployeeID we want 
because that is going to drastically change what our output is 
*/
SELECT EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
	
-- same output for the two codes below because we use inner join

-- let's use EmployeeDemographics.EmployeeID
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
	
-- let's use EmployeeSalary.EmployeeID
SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/*
is gonna take the right table and say we want everything from the right table and everything that's overlapping
but look at EmployeeID in rows 10 and 11 it's null that's because there is no 1010 in the EmployeeID column from the EmployeeDemographics table
*/
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- opposite of the above code  
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


-- let's use EmployeeSalary.EmployeeID
SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


#usecases 






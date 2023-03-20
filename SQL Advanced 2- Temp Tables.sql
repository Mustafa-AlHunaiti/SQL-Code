/*
Temp Tables (temporary table)
you can hit off this temp table multiple times which you cannot do with something like a CTE or a subquery 
where you can only use it one time or with the subquery you need to write it multiple times within a query 
*/

-- the only difference between a regular table and temp table is at the very beginning we add pound sign (#) 
CREATE TABLE #temp_Employee
(EmployeeID int,
JobTitle varchar(100),
Salary int
)

-- let's look at out temp table 
SELECT *
FROM #temp_Employee

-- inserting data into the temp table
INSERT INTO #temp_Employee VALUES
('1001', 'HR', '45000')

-- we can select all of the data from a specific table and insert that into a temp table 
INSERT INTO #temp_Employee 
SELECT *
FROM SQLTutorial..EmployeeSalary
-- so we took all of the data from EmployeeSalary and then we just stuck it into this table and really quickly this is one of the big usees of a temp table  


-- i'm going to show you kind of how i would actually use it 

CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)


INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial ]..EmployeeDemographics emp
JOIN [SQL Tutorial ]..EmployeeSalary sal
   ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle


SELECT *
FROM #Temp_Employee2
/*
so now we have this subsection of data from this join above and what this going to do is whenever we want to run this we don't have to 
run it on these two tables and create the join and then do the calculations which takes time what it's going to do is it's going to take 
these exact values and place this into this temporary table and if we want to run further calculations on these values we can easily do that in a fraction 
of the time instead of having to run this
block of code
(
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial ]..EmployeeDemographics emp
JOIN [SQL Tutorial ]..EmployeeSalary sal
   ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle
)
every single time which will take up so much proccessing power and it will reduce your runtime dramatically when you're placing this data in this temp table and 
hitting off of that instead of all these joins and everything above
a lot of times these temp tables are used in stored procedures 
*/


/*
let's say we have a stored procedure set up we run the stored procedure and we get an output and you know we for every reason want to run it again
and when we run it again we get this error 'There is already an object named '#Temp_Employee2' in the database' and you know this temp table lives 
somewhere it doesn't live in the actual database but it lives some where and so when we run it again we get an error because
there's already a temp table created on trick or one little tip that i would give is doing DROP TABLE IF EXISTS <Table Name>
*/

DROP TABLE IF EXISTS #Temp_Employee2 -- on trick or one little tip that i would give is doing DROP TABLE IF EXISTS <Table Name> 
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial ]..EmployeeDemographics emp
JOIN [SQL Tutorial ]..EmployeeSalary sal
   ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2















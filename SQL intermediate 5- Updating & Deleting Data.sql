/*
Updating/Deleting Data in a table 
*/

-- run this code below so down you will see Holly flax does not have an EmployeeID, Age or Gender 
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics


-- we want to update this table to give her that information 
UPDATE SQLTutorial.dbo.EmployeeDemographics
SET EmployeeID = 1012, Age = 31, Gender = 'Female' -- the set is gonna specify what column and what value you actually want to insert into that cell
WHERE FirstName = 'Holly' AND LastName = 'Flax' -- specify which one to do this to, because if we ran just the two lines of code above is gonna set every single EmployeeID to 1012 because we haven't specified that we only want Holly flax is row to be updated 
 
 
-- delete the row of 1005 from the EmployeeID column from the EmployeeDemographics table
DELETE FROM EmployeeDemographics
WHERE EmployeeID = 1005
-- Note: you have to be very careful when you use the delete statement because once you run it you canot get that data back there's no way to reverse a delete statement 


-- if i run this it would delete everything from the entire table and you could not get that data back
DELETE FROM EmployeeDemographics




/*
so little trick that i use before i actually run a delete statement is i make it a select statement because you gonna select everything where the EmployeeID
is equal to 1004 
block of code below
(
SELECT*
FROM EmployeeDemographics
WHERE EmployeeID = 1004
)
when you run this code you were gonna see exactly what you will be deleting and now we know that Angela Martin that entire row is gonna be gone if i haven't
done that and i just went like this 
block of code below
(
DELETE
FROM EmployeeDemographics
WHERE EmployeeID = 1004
)
*/

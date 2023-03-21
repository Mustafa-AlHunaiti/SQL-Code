/*
String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
*/

CREATE TABLE EmployeeErrors(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeErrors VALUES
('1001', 'Jimbo', 'Halbert'),
('1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired')



-- Using Trim, RTRIM, LTRIM

-- the Trim get rid of blank spaces on both side   
Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

-- the RTRIM get rid of blank spaces on the right side
Select EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors 

-- the LTRIM get rid of blank spaces on the left side
Select EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors 

	



-- Using Replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed -- REPLACE(<ColumnName>, <the value you want to replace>, <The value you want to put>)
FROM EmployeeErrors


-- Using Substring

/*
Fuzzy matching:I'll give you an example let's say in one table my name is Alex and in another table my name is Alexander
if we try to join those two together based off of my name they will not join because one is Alex and one is Alexander there's not an exact match
but if I take the substring and start position one and move forward four characters it's going to take Alex from both and then it will match them together
and say that they are the same so that you know it may not be perfect that's why it's called a fuzzy match
because it can work for a large majority of the time but it's not going to work every single time
*/

SELECT SUBSTRING(err.FirstName, 1, 3), SUBSTRING(dem.FirstName, 1, 3), SUBSTRING(err.LastName, 1, 3), SUBSTRING(dem.LastName, 1, 3) -- SUBSTRING(<ColumnName>, Start, Spot/step)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.FirstName, 1, 3)
	AND SUBSTRING(err.LastName, 1, 3) = SUBSTRING(dem.LastName, 1, 3)
  
-- typically will not just filter on a first name because there's going to be a ton of people named alex or jim or whatever you're going to do this on many different things(Gender, LastName, Age, DOB(date of birth)) are all the same then you can typically get a very high accuracy in matching people across tables.
-- this is an example if you don't have like an EmployeeID which is what we do have but take for example we were not given that 




-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors





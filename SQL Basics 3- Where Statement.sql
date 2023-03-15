/*
Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/
-- Return Jim from FirstName coulmn from EmployeeDemographics table
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'


-- Return all name except Jim from FirstName coulmn from EmployeeDemographics table
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'


-- Return all age over the age of 30 from Age coulmn from EmployeeDemographics table || return all age over the age of 30 or equal  
SELECT *
FROM EmployeeDemographics
WHERE Age > 30

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30


-- Return all age less the age of 32 from Age coulmn from EmployeeDemographics table || return all age less the age of 32 or equal 
SELECT *
FROM EmployeeDemographics
WHERE Age < 32

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32


-- we need someone whose age is less than 32 or equal to 32 AND we need their gender to be male.
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'


-- we need someone whose age is less than 32 or equal to 32 OR we need their gender to be male.
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'


-- want everybody whose last name starts with S no
-- Notice: '%' is  Wildcard Character
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'



-- want everybody whose last name has S
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'



-- want everybody whose last name starts with S and has an O in it 
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'


--You can do that for multiple things you can even say 
SELECT *
FROM EmployeeDemographics
 WHERE LastName LIKE 'S%ott%'
            
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%c%ott%'

--Notice: if we put C at the back it's not going to be returned because it follows in order so it isn't OTTC it COTT from Scott word 
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ott%c%'



--Find NULL & NOT NULL values from the first name
SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NOT NULL


-- IN command is Equal to (=) operator but for multiple things
-- we need Jim and Meredith from first name
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Meredith')


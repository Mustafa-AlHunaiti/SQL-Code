/*
Case Statement
allows you to specify condition and then it also allows you to specify what you want returned when that condition is met 
*/


/*
specified what condition we want to look for,
our condition is WHEN the age is greater than 30 THEN what do we want to be returned we want to return they are Old
ELSE that are not over the age of 30 we want to return Young and 
then you need to specify that you were done with the CaseStatement and so you will write END at the very bottom 
*/
SELECT FirstName, LastName, Age,
CASE 
	WHEN Age > 30 THEN 'Old' 
	ELSE 'Young'
END 
FROM EmployeeDemographics
WHERE Age IS NOT NULL -- we're gonna be using this age column so we actually want the age to be in there 
ORDER BY Age



-- we can do as many WHEN and THEN statements as we want 
SELECT FirstName, LastName, Age,
CASE 
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END 
FROM EmployeeDemographics
WHERE Age IS NOT NULL 
ORDER BY Age



/*
something to note is that the very first condition that is met is going to be returned
so if there are multiple conditions that meet the criteria only the very first one is going to be returned. 

so in the second condition WHEN and THEN in the code below, I am specifying that if it's 38 it should return Stanley
but in the output you will notice it still old and that's because first WHEN and THEN condition was already met.
*/
SELECT FirstName, LastName, Age,
CASE 
	WHEN Age > 30 THEN 'Old'
	WHEN Age = 38 THEN 'Stanley'
	ELSE 'Baby'
END 
FROM EmployeeDemographics
WHERE Age IS NOT NULL 
ORDER BY Age


/*
if we were to put the second condition above before the first condition it should work correctly
because this condition " WHEN Age = 38 THEN 'Stanley' " is met first it is going to return Stanley
*/
SELECT FirstName, LastName, Age,
CASE 
  WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'
END 
FROM EmployeeDemographics
WHERE Age IS NOT NULL 
ORDER BY Age

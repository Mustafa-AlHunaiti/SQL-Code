/*
Group By, Order By
*/
-- Group by statement is similar to distinct in the select statement the difference is if we say 

SELECT DISTINCT(Gender)
FROM EmployeeDemographics
-- return the very first unique value of female and the very first unique value of male

-- but if we say
SELECT Gender 
FROM EmployeeDemographics
GROUP BY Gender
--it's only gonna return two values but in this two values we actually have all the males rolled up into this one row "Male" and all the females rolled up into this one row "Female"
-- let me further show you what that means
SELECT Gender, count(Gender) AS CountGender 
FROM EmployeeDemographics
GROUP BY Gender
-- now you can see that this whole time there were six males in this one row  "Male" and there were three females in this one row "Female"



SELECT Gender, count(Gender) AS CountGender 
FROM EmployeeDemographics
GROUP BY Gender


SELECT Gender, Age, count(Gender) AS CountGender 
FROM EmployeeDemographics
GROUP BY Gender, Age


SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender


SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender


SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender ASC



SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC


SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender 

SELECT *
FROM EmployeeDemographics
ORDER BY Age


SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC


 SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender 


SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender DESC


SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC


SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC









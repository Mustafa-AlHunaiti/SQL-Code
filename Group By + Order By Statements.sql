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
/* 
it's only gonna return two values but in this two values we actually have all the males rolled up into this one row "Male" 
and all the females rolled up into this one row "Female"
*/
-- let me further show you what that means
SELECT Gender, count(Gender) AS CountGender 
FROM EmployeeDemographics
GROUP BY Gender
-- now you can see that this whole time there were six males in this one row  "Male" and there were three females in this one row "Female"


/* 
Conclusion: so with a distinct it really is only showing us what value is in there that's unique but
with the group by it's showing us what the unique value is but it's also rolling them all up into one row so we can use it for other things
*/



-- you will notice: none of these people are both the same gender and the same age so the count of the row will be 1 for each row
SELECT Gender, Age, count(Gender) AS CountGender 
FROM EmployeeDemographics
GROUP BY Gender, Age
-- but as you can see you can put multiple columns at the group by 
/*
In like i said before it's the comparison to that distinct in the select statement
because we're looking at  the distinct of gender and age 
so we're saying distinct across  multiple columns both the gender and age
*/

/* 
now why did we not have to put CountGender down in this group by 
that's because this  CountGender is actually a derived column it's derived based off the gender column
so it's technically not a real column  that's in the table it's one that we're creating that's fictional per se
so the age and gender are actual columns that are in our tables they have to be down here 
*/


-- we can still do things like 
SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender



-- when we add an order by to our code  it's for orders Either ascending or descending
-- by default SQL has an ascending feature there's gonna be smallest to largest going down the code below is used an ascending feature by default
SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender -- by default Ascending


SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender ASC -- Ascending



SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC -- Descending


SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender -- by default Ascending

SELECT *
FROM EmployeeDemographics
ORDER BY Age -- by default Ascending


SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC -- Descending

/*
the difference below we use two columns in order by
in sequence will be arranged by age then gender
*/
SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender 


SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender DESC


SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC



-- we could just use numbers so order by 1, 2, 3, 4, 5 i could 
-- the two codes below equal 
SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC







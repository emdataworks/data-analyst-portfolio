# US Household Income Exploratory Data Analysis

#10 States With The Largest Land Area
SELECT State_Name, SUM(ALand), SUM(AWater)
FROM us_household_income.us_household_income
GROUP BY State_Name
ORDER BY 2 DESC
LIMIT 10;

#10 States With The Smallest Land Area
SELECT State_Name, SUM(ALand), SUM(AWater)
FROM us_household_income.us_household_income
GROUP BY State_Name
ORDER BY 2 ASC
LIMIT 10;

#10 States With The Largest Water Area
SELECT State_Name, SUM(ALand), SUM(AWater)
FROM us_household_income.us_household_income
GROUP BY State_Name
ORDER BY 3 DESC
LIMIT 10;

#10 States With The Smallest Water Area
SELECT State_Name, SUM(ALand), SUM(AWater)
FROM us_household_income.us_household_income
GROUP BY State_Name
ORDER BY 3 ASC
LIMIT 10;

SELECT *
FROM us_household_income u
JOIN us_household_income_statistics us 
	ON u.id = us.id;

SELECT *
FROM us_household_income u
INNER JOIN us_household_income_statistics us 
	ON u.id = us.id
WHERE MEAN <> 0;

# Selecting the State, County, Type, Primary, Mean and Median after doing an Inner Join on the tables and filtering to remove empty values
SELECT u.State_Name, County, Type, `Primary`, Mean, Median
FROM us_household_income u
INNER JOIN us_household_income_statistics us 
	ON u.id = us.id
WHERE MEAN <> 0;


# Average Household Income by State 

SELECT u.State_Name, ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM us_household_income u
INNER JOIN us_household_income_statistics us 
	ON u.id = us.id
WHERE MEAN <> 0
GROUP BY U.State_Name
ORDER BY 2
;

# Lowest 5 Average Household Income States

SELECT u.State_Name, ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM us_household_income u
INNER JOIN us_household_income_statistics us 
	ON u.id = us.id
WHERE MEAN <> 0
GROUP BY U.State_Name
ORDER BY 2
LIMIT 5
;

# Top 5 Average Household Income States

SELECT u.State_Name, ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM us_household_income u
INNER JOIN us_household_income_statistics us 
	ON u.id = us.id
WHERE MEAN <> 0
GROUP BY U.State_Name
ORDER BY 2 DESC
LIMIT 5
;

#Average Salaries of Households Based on Type

SELECT Type, COUNT(Type), ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM us_household_income u
INNER JOIN us_household_income_statistics us 
	ON u.id = us.id
WHERE MEAN <> 0
GROUP BY Type
HAVING  COUNT(Type) > 100
ORDER BY 3 DESC
;

# 10 Highest Average Household Income by City

SELECT u.state_Name, City, ROUND(AVG(Mean),1)
FROM us_household_income u
INNER JOIN us_household_income_statistics us 
	ON u.id = us.id 
GROUP BY u.state_Name, City
ORDER BY 3 DESC
LIMIT 10;



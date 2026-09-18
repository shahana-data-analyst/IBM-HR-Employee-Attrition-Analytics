--IBM-HR-Attrition-Analytics
---Data_Cleaning_and_Preparation
  
--Create_Database
CREATE DATABASE ibm_hr;
USE ibm_hr;

--Table_Name_Change
RENAME TABLE `wa_fn-usec_-hr-employee-attrition` TO employee_attrition;
SELECT * from employee_attrition;

--Null_value_check
SELECT COUNT(*) AS total_rows,COUNT(Attrition) AS Attrition,COUNT(BusinessTravel) 
AS BusinessTravel,COUNT(DailyRate) AS DailyRate,
COUNT(Department)AS Department,COUNT(DistanceFromHome) AS DistanceFromHome,
COUNT(Education) AS Education , COUNT(EducationField) AS EducationField , 
COUNT(EmployeeNumber) AS EmployeeNumber,COUNT(Gender) AS Gender FROM employee_attrition;

--Duplicate_Check
SELECT EmployeeNumber , COUNT(*) AS Duplicate FROM employee_attrition
GROUP BY EmployeeNumber HAVING COUNT(*)>1;

--Data_Validation
SELECT DISTINCT (Department) FROM employee_attrition;
SELECT DISTINCT Attrition FROM employee_attrition;

--Data_Type_Check
DESCRIBE employee_attrition;
SHOW COLUMNS FROM employee_attrition;

--Columns_Name_Cleaning
ALTER TABLE employee_attrition RENAME COLUMN ï»¿Age TO Age;
ALTER TABLE employee_attrition RENAME COLUMN MonthlyIncome TO Salary;
ALTER TABLE employee_attrition RENAME COLUMN  Experience TO YearsAtCompany;
ALTER TABLE employee_attrition ADD COLUMN Age_Group VARCHAR(20),
ADD COLUMN Salary_Slab VARCHAR(20), ADD COLUMN Experience_Group VARCHAR(20);

--Create_new_columns
UPDATE employee_attrition SET Age_Group = CASE     
WHEN Age BETWEEN 18 AND 25 THEN 'Young'
WHEN Age BETWEEN 26 AND 35 THEN 'Early Career'
WHEN Age BETWEEN 36 AND 45 THEN 'Mid Career'
WHEN Age BETWEEN 46 AND 55 THEN 'Senior'
WHEN Age BETWEEN 56 AND 60 THEN 'Late Career'
END;
SET SQL_SAFE_UPDATES=0

UPDATE employee_attrition SET Salary_Slab = CASE
WHEN Salary BETWEEN 1009 AND 5000 THEN 'Low'
WHEN Salary BETWEEN 5001 AND 10000 THEN 'Medium'
WHEN Salary BETWEEN 10001 AND 15000 THEN 'High'
WHEN Salary BETWEEN 15001 AND 19999 THEN 'Very High'
END;

UPDATE employee_attrition SET Experience_Group = CASE
WHEN TotalWorkingYears BETWEEN 0 AND 5 THEN  'Fresher / Junior'
WHEN TotalWorkingYears BETWEEN 6 AND 10 THEN 'Early Career'
WHEN TotalWorkingYears BETWEEN 11 AND 20 THEN 'Mid Career'
WHEN TotalWorkingYears BETWEEN 21 AND 30 THEN 'Experienced'
WHEN TotalWorkingYears BETWEEN 31 AND 40 THEN 'Highly Experienced'
END;





--Business-Analysis-Quaries

USE ibm_hr;

--1.What is the Total Employees in the company?
SELECT COUNT(EmployeeNumber)  AS Total_Employees FROM employee_attrition;

--2.How many emploees are currently active?
SELECT COUNT(*) AS Active_Employees FROM employee_attrition WHERE Attrition ="No";

--3.How many employees are left in the company?
SELECT COUNT(*) AS Attrition_Count FROM employee_attrition WHERE Attrition ="Yes";

--3.What persentage of employees have left the company?
SELECT (SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) / COUNT(EmployeeNumber)) * 100 AS Attrition_Rate
 FROM employee_Attrition;
 
--5.What is the attrition count by department?
SELECT Department,SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END)
 AS Attrition_Count FROM employee_attrition GROUP BY Department;
 
--6.What is the attrition count by Job Role?
SELECT JobRole,SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Attrition_Count 
FROM employee_attrition GROUP BY JobRole;

--7.What is the attrtion count by Gender?
SELECT Gender,SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Attrition_Count FROM employee_attrition
 GROUP BY Gender;

--8.What is the attrtion count by Age Group?
SELECT Age_Group,SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Attrition_Count
 FROM employee_attrition GROUP BY Age_Group;
 
--9.What is the attrition count by Salary Slab?
SELECT Salary_Slab,SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Attrition_Count 
FROM employee_attrition GROUP BY Salary_Slab;

--10.What is the attrtion count by Overtime?
SELECT OverTime,SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Attrition_Count
FROM employee_attrition GROUP BY OverTime;
 
--11.What is the attrtion count by Job Satisfaction?
SELECT JobSatisfaction, SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Attrition_Count 
FROM employee_attrition GROUP BY JobSatisfaction;

--12.What is the Attrition count by Years at company?
SELECT Yearsatcompany,SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Attrition_Count 
FROM employee_attrition GROUP BY WorkLifeBalance;

--13.What is the attrtion count by Total working years
SELECT TotalWorkingYears,SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Attrition_Count
 FROM employee_attrition GROUP BY TotalWorkingYears;
 
--14.What is the average monthly income by department?
SELECT Department,AVG(Salary) AS Average_income FROM employee_attrition GROUP BY Department;

--15.What is the top 7 job role with high attrtion count?
SELECT JobRole,SUM(CASE WHEN Attrition="Yes" THEN 1 ELSE 0 END) AS Attrition_Count 
FROM employee_attrition GROUP BY JobRole ORDER BY Attrition_Count DESC LIMIT 5;
 
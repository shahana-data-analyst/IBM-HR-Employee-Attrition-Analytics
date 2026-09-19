--Final SQL_View_for_Power_Bi

--Create cleaned view_for HR Attrtion Analysis
CREATE VIEW employee_attrition_dataset AS
SELECT
     EmployeeNumber,
     Attrition,
     Department,
     JobRole,
     Salary_Slab,
     Gender,
     Age_Group,
     JobSatisfaction,
     OverTime,
     YearsAtCompany,
     Education,
     MaritalStatus,
     TotalWorkingYears,
     Experience_Group,
     Salary
 FROM employee_attrition;
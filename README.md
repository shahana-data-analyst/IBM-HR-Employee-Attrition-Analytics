IBM HR Employee Attrition Analytics

An end-to-end HR analytics case study using MySQL (SQL) and Power BI to analyze employee attrition, identify patterns associated with employee turnover, and translate data-driven findings into actionable HR recommendations.

This project goes beyond dashboard creation. It follows a complete business problem-solving and data storytelling approach:

Business Problem → SQL Data Preparation → SQL Analysis → Power BI Reporting → Insights → HR Recommendations

⸻

📌 Project Overview

Employee attrition creates significant challenges for organizations through recruitment cost, onboarding effort, knowledge loss, and workforce instability.

Using the IBM HR Employee Attrition & Performance dataset, this project simulates a real-world HR analytics scenario with the objective of understanding:

* How much employee attrition is occurring?
* Where is attrition concentrated?
* Which employee segments show higher attrition?
* What patterns are associated with employees leaving?
* What data-informed actions could HR consider?

MySQL was used for data preparation and analysis, while Power BI was used for interactive visualization, storytelling, insights, and recommendations.

⸻

🎯 Business Problem

HR leadership needs a clear understanding of employee attrition to identify workforce segments that may require attention and to support better retention planning.

The analysis focuses on understanding attrition across:

* Departments
* Job roles
* Gender
* Age groups
* Salary levels
* Overtime
* Job satisfaction
* Work-life balance
* Employee tenure

The goal is not simply to report how many employees left, but to investigate where attrition is concentrated and which employee characteristics are associated with higher attrition.

⸻

❓ Business Questions

#	Business Question
1	How many employees are currently in the organization?
2	How many employees have left?
3	What is the overall attrition rate?
4	Which departments have higher attrition?
5	Which job roles experience higher attrition?
6	How does attrition vary by gender?
7	Which age groups have higher attrition?
8	How does salary level relate to employee attrition?
9	How does overtime relate to attrition?
10	How does job satisfaction relate to attrition?
11	How does work-life balance relate to attrition?
12	How does employee tenure relate to attrition?
13	How does average monthly income vary by department?
14	Which job roles have the highest attrition overall?

⸻

🛠️ Tools & Technologies

Category	Tools
Database & SQL Analysis	MySQL
Data Transformation	SQL / Power Query
Data Visualization	Power BI
Calculations	DAX
Version Control	Git & GitHub
Dataset	IBM HR Employee Attrition & Performance

⸻

📂 Dataset

The project uses the IBM HR Employee Attrition & Performance dataset.

The dataset contains employee-level information including:

* Employee demographics
* Department
* Job role
* Monthly income
* Job level
* Overtime
* Job satisfaction
* Work-life balance
* Years at company
* Total working years
* Attrition status

Dataset size: 1,470 employee records

📁 Dataset: dataset/

⸻

🔄 Project Workflow

Business Problem
      ↓
Business Questions
      ↓
SQL Data Cleaning & Validation
      ↓
SQL Analytical Queries
      ↓
Cleaned SQL View
      ↓
Power BI Data Modeling & DAX
      ↓
3-Page Power BI Report
      ↓
Business Insights
      ↓
HR Recommendations

The Power BI report follows the same storytelling structure:

Overview → Investigation → Insights → Action

⸻

🧹 Data Preparation & SQL Analysis

Before building the Power BI report, the dataset was explored and prepared using MySQL.

Data Cleaning & Validation

1. Data Exploration – Reviewed table structure, available columns, data types, and dataset size.
2. NULL Value Checks – Checked columns for missing values.
3. Duplicate Checks – Checked for duplicate employee records.
4. Data Type Validation – Verified that columns were stored using appropriate data types.
5. Categorical Value Validation – Checked distinct values in fields such as Attrition, Department, Gender, OverTime, and Job Role.
6. Data Standardization – Validated and standardized categorical values where required.
7. Derived Fields – Created analysis-ready fields directly in SQL:
    * Age Group
    * Salary Slab
    * Experience Group
8. Cleaned SQL View – Created a cleaned SQL view containing the fields required for analysis and connected this prepared dataset to Power BI.

Why SQL Was Used

SQL provided the analytical foundation of the project.

Instead of moving directly from raw data to Power BI, SQL was used to:

* Validate the underlying data.
* Prepare analysis-ready fields consistently.
* Answer business questions before visualization.
* Keep transformation logic centralized and repeatable.
* Create a clean data source for Power BI.

This kept data preparation and analysis clearly separated from visual storytelling.

⸻

📊 SQL Business Analysis

SQL queries were written to investigate the major HR business questions, including:

* Total employee count
* Active employee count
* Attrition count
* Overall attrition rate
* Attrition by department
* Attrition by job role
* Attrition by gender
* Attrition by age group
* Attrition by salary slab
* Attrition by overtime
* Attrition by job satisfaction
* Attrition by work-life balance
* Attrition by years at company
* Average monthly income by department
* Top job roles by attrition

The SQL analysis established the foundation for the Power BI storytelling layer.

📁 SQL scripts:

* sql/data_cleaning.sql
* sql/business_questions.sql
* sql/analysis_queries.sql

⸻

📊 Power BI Report

The cleaned SQL view was connected to Power BI to build an interactive 3-page report, intentionally designed as a storytelling experience rather than a collection of unrelated charts.

Page 1 — Executive Overview

Purpose: Provide a fast, high-level view of the organization’s workforce and attrition situation.

Key KPIs

KPI	Value
Total Employees	1,470
Active Employees	1,233
Attrition Count	237
Attrition Rate	16.12%
Average Salary	6,503
Average Experience	11.28 years

Visuals

* Attrition by Job Role
* Attrition by Department
* Attrition by Age Group
* Attrition by Gender
* Interactive slicers

Filters

* Department
* Gender
* Education
* Marital Status

Storytelling Question: “What is happening?”

⸻

Page 2 — Attrition Analysis

Purpose: Move from the overall picture into employee characteristics and workplace factors associated with attrition.

Analysis Included

1. Years at Company vs. Attrition – Examines how attrition varies across tenure, with higher observed attrition among newer employees.
2. Overtime vs. Attrition – Examines the relationship between overtime status and attrition.
3. Job Satisfaction vs. Attrition – Analyzes attrition across satisfaction levels 1–4.
4. Salary Slab vs. Attrition – Compares attrition across Low, Medium, High, and Very High salary bands.

Filters from Page 1 allow viewers to explore these patterns across different workforce segments.

Storytelling Question: “Where and among whom is attrition concentrated?”

⸻

Page 3 — Insights & HR Recommendations

Purpose: Convert the analysis into business-oriented insights and potential HR actions.

Storytelling Framework:

Data → Pattern → Business Insight → Recommended Action

The recommendations are data-informed suggestions based on observed patterns and associations in the dataset. They should not be interpreted as proof that any single factor directly causes employee attrition.

📁 Screenshots:

* screenshots/page1_executive_overview.png
* screenshots/page2_attrition_analysis.png
* screenshots/page3_insights_recommendations.png

📁 Power BI file:

powerbi/IBM_HR_Attrition_Analytics.pbix

⸻

🔍 Key Insights

Area	Finding
First-Year Attrition	Employees with 0–1 year of tenure show the highest attrition rate at 34.88%
Overtime	75% of attrition cases involve employees who work overtime
Salary	The Low salary slab shows the highest attrition rate at 21.76%, while the Very High slab shows 3.76%
Department	Sales has the highest departmental attrition rate at 20.63%, followed by HR at 19.05%
Job Satisfaction	Employees at satisfaction level 1 show 22.84% attrition, compared with 11.33% at level 4
Work-Life Balance	Analyzed as part of the SQL business questions; it showed a less pronounced association with attrition compared with tenure, overtime, salary, and job satisfaction

Important: These findings represent patterns and associations observed in the dataset. They do not establish that any individual factor directly causes employees to leave.

Attrition by Job Role

Job Role	Attrition Count	Total Employees
Laboratory Technician	62	259
Sales Executive	57	326
Research Scientist	47	292
Sales Representative	33	83
Human Resources	12	52
Manufacturing Director	10	145
Healthcare Representative	9	131
Manager	5	102
Research Director	2	80

Laboratory Technicians and Sales Executives account for the largest number of attrition cases in absolute terms. Sales Representatives show a higher attrition rate relative to their smaller workforce size.

⸻

💡 Business Recommendations

Insight Area	Recommended Action
First-Year Retention	Introduce structured 30/60/90-day onboarding, assign mentors or buddies, conduct regular check-ins, and set clear role expectations for new employees.
Overtime	Monitor overtime patterns, review workload distribution, identify teams with sustained overtime, and assess staffing requirements.
Low Salary Slab	Review entry-level compensation against market benchmarks and introduce structured salary progression based on experience and performance.
Sales & HR Departments	Conduct department-level attrition reviews and investigate workload, compensation, management, and employee-experience factors specific to these departments.
Job Satisfaction	Conduct stay interviews, collect regular employee feedback, and identify workplace factors contributing to lower satisfaction.

⸻

🧠 Problem-Solving & Analytical Approach

This project demonstrates an end-to-end Data Analyst workflow, not just visualization.

* Business Understanding – Started with an HR business problem and converted it into measurable business questions.
* Data Preparation – Used SQL to inspect, validate, clean, transform, and prepare the dataset.
* Analytical Thinking – Investigated attrition across multiple dimensions to identify where it was concentrated.
* SQL – Used MySQL to answer business questions and create analysis-ready fields.
* Power BI & DAX – Built reusable measures and interactive visuals to communicate workforce and attrition metrics.
* Data Storytelling – Structured the report so each page answers a different stage of the business problem:
    * Page 1 → What is happening?
    * Page 2 → Where and among whom is it concentrated?
    * Page 3 → What can HR consider doing?
* Business Recommendations – Converted observed data patterns into practical, data-informed HR actions.

⸻

📈 Business Value

This project demonstrates how data analysis can support HR decision-making by helping stakeholders:

* Identify employee segments with higher observed attrition.
* Understand where attrition is concentrated.
* Explore workforce patterns interactively.
* Prioritize areas for further HR investigation.
* Move from raw data to specific business questions.
* Use employee data to support retention discussions.

The report is designed as a decision-support tool, not simply a visualization exercise.

⸻

🖥️ Power BI Report Preview

Page 1 — Executive Overview

Add your Page 1 screenshot here.

Page 2 — Attrition Analysis

Add your Page 2 screenshot here.

Page 3 — Insights & Recommendations

Add your Page 3 screenshot here.

⸻

🗂️ Project Structure

IBM-HR-Employee-Attrition-Analytics/
│
├── README.md
│
├── dataset/
│   └── IBM_HR_Employee_Attrition.xlsx
│
├── sql/
│   ├── data_cleaning.sql
│   ├── business_questions.sql
│   └── analysis_queries.sql
│
├── powerbi/
│   └── IBM_HR_Attrition_Analytics.pbix
│
├── screenshots/
│   ├── page1_executive_overview.png
│   ├── page2_attrition_analysis.png
│   └── page3_insights_recommendations.png
│
└── insights/
    └── business_insights.md

Note: Update the filenames above to match the actual files uploaded to the repository.

⸻

📌 Project Summary

This IBM HR Employee Attrition Analytics project demonstrates an end-to-end approach to solving a business problem with data.

Using MySQL, I prepared and analyzed the employee dataset and answered key HR business questions. Using Power BI and DAX, I transformed the analysis into a structured 3-page interactive report. The final page translated the observed patterns into data-informed HR insights and recommendations.

The project demonstrates more than dashboard development — it showcases:

* SQL
* Data Preparation
* Analytical Thinking
* Power BI
* DAX
* Data Storytelling
* Problem Solving
* Business Communication

Core Workflow

SQL → Data Preparation → Analysis → Power BI → Storytelling → Insights → Recommendations

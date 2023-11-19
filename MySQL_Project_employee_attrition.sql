CREATE SCHEMA employee_attrition;
USE employee_attrition; 
SELECT * FROM employee_attrition;
SELECT * FROM employee_attrition WHERE AGE BETWEEN 27 AND 35 AND TotalWorkingYears >5 ORDER BY AGE ASC; 
SELECT * FROM employee_attrition WHERE PercentSalaryHike <13; 
SELECT DEPARTMENT, MAX(MonthlyIncome) FROM employee_attrition WHERE PercentSalaryHike <13 GROUP BY DEPARTMENT ORDER BY MAX(MonthlyIncome) ASC; 
SELECT DEPARTMENT, 
MAX(MonthlyIncome),
MIN(MonthlyIncome)
FROM employee_attrition WHERE PercentSalaryHike >13 GROUP BY DEPARTMENT ORDER BY MAX(MonthlyIncome) ASC;
SELECT AVG(MonthlyIncome)
FROM employee_attrition
WHERE YearsAtCompany > 3
AND EducationField = "Medical";
SELECT
GENDER,COUNT(EmployeeCount)
FROM employee_attrition
WHERE MaritalStatus = "MARRIED"
AND YearsSinceLastPromotion = 2
AND Attrition = "Yes"
GROUP BY GENDER;
SELECT * -- GENDER,COUNT(EmployeeCount),
FROM employee_attrition
WHERE MaritalStatus = "MARRIED"
AND YearsSinceLastPromotion = 2
AND ATTRITION = "YES";
SELECT * FROM employee_attrition
WHERE PerformanceRating = (SELECT MAX(PerformanceRating) FROM employee_attrition)
AND YearsSinceLastPromotion >=4;
SELECT YearsAtCompany,PerformanceRating,YearsSinceLastPromotion,
        max(PercentSalaryHike),
        min(PercentSalaryHike)
FROM employee_attrition
GROUP BY YearsAtCompany,PerformanceRating,YearsSinceLastPromotion
ORDER BY MAX(PercentSalaryHike) DESC, MIN(PercentSalaryHike) ASC; 
SELECT DISTINCT DEPARTMENT FROM employee_attrition;
SELECT * FROM employee_attrition
WHERE OverTime = "Yes"
AND PercentSalaryHike = (SELECT MIN(PercentSalaryHike) FROM employee_attrition)
AND YearsAtCompany >5; 
SELECT * FROM employee_attrition
WHERE OverTime = "No"
AND PercentSalaryHike = (SELECT MAX(PercentSalaryHike) FROM employee_attrition)
AND YearsAtCompany >5; 
SELECT MaritalStatus,MAX(RelationshipSatisfaction),MIN(RelationshipSatisfaction)
FROM employee_attrition
GROUP BY MaritalStatus;





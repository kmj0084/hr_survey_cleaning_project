-- CLEANING SQL LOGIC (Normalized Data Already)

-- This SQL assumes initial standardization was applied in ETL phase.

-- CLEANING SQL LOGIC

-- 1. Create a cleaned table from the raw data
DROP TABLE IF EXISTS hr_survey_cleaned;
CREATE TABLE hr_survey_cleaned AS
SELECT
    EmployeeID,
    CASE 
        WHEN Satisfaction IN ('high', 'High', 'H') THEN 'High'
        WHEN Satisfaction IN ('med', 'Medium', 'medium') THEN 'Medium'
        WHEN Satisfaction IN ('low', 'Low', 'L') THEN 'Low'
        ELSE 'Unknown'
    END AS Satisfaction_Cleaned,

    CASE
        WHEN WorkLifeBalance IN ('1', 'Bad') THEN 'Poor'
        WHEN WorkLifeBalance IN ('2', 'Good') THEN 'Fair'
        WHEN WorkLifeBalance IN ('3', 'Better') THEN 'Good'
        WHEN WorkLifeBalance IN ('4', 'Best') THEN 'Excellent'
        ELSE 'Unknown'
    END AS WorkLifeBalance_Cleaned,

    CASE
        WHEN Attrition IN ('yes', 'Y', '1') THEN 'Yes'
        WHEN Attrition IN ('no', 'N', '0') THEN 'No'
        ELSE 'Unknown'
    END AS Attrition_Cleaned,

    Gender,
    JobRole,
    Department,
    MonthlyIncome,
    YearsAtCompany
FROM hr_survey_raw;

-- 2. Optional: remove or flag bad/missing values
DELETE FROM hr_survey_cleaned
WHERE Satisfaction_Cleaned = 'Unknown'
   OR Attrition_Cleaned = 'Unknown';

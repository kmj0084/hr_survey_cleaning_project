-- REPORTING SQL LOGIC

-- 1. % satisfied employees
SELECT satisfaction, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_survey) AS percent
FROM cleaned_survey
GROUP BY satisfaction;

-- 2. % who would recommend the company
SELECT recommend_to_friend, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_survey) AS percent
FROM cleaned_survey
GROUP BY recommend_to_friend;

-- 3. Avg. manager score by department
SELECT department, AVG(manager_feedback_score) AS avg_score
FROM cleaned_survey
GROUP BY department;

-- 4. Most common feedback comments
SELECT comments, COUNT(*) AS frequency
FROM cleaned_survey
GROUP BY comments
ORDER BY frequency DESC
LIMIT 5;
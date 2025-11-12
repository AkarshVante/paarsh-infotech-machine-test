SELECT department, AVG(CASE WHEN salary='low' THEN 1 WHEN salary='medium' THEN 2 WHEN salary='high' THEN 3 END) AS avg_salary_numeric FROM employees GROUP BY department ORDER BY avg_salary_numeric DESC LIMIT 1;
SELECT * FROM employees WHERE years_at_company > 5 AND promotion_last_5years = 0;
SELECT department, SUM(CASE WHEN left=1 THEN 1 ELSE 0 END)*1.0/COUNT(*) AS attrition_rate FROM employees GROUP BY department ORDER BY attrition_rate DESC LIMIT 3;
SELECT AVG(satisfaction_level) FROM employees WHERE left = 1;
SELECT department FROM employees GROUP BY department ORDER BY AVG(average_montly_hours) ASC LIMIT 1;

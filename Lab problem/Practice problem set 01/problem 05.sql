-- 5. Output instructor names sorted by the ratio of their salary to their department's budget (in ascending order).
SELECT i.name, (i.salary / d.budget) AS salary_budget_ratio
FROM instructor i
JOIN department d ON i.dept_name = d.dept_name
ORDER BY salary_budget_ratio ASC;


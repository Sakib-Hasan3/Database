-- 7. Find the names of those departments whose budget is higher than that of Astronomy. List them in alphabetic order.
SELECT dept_name
FROM department
WHERE budget > (SELECT budget FROM department WHERE dept_name = 'Astronomy')
ORDER BY dept_name;


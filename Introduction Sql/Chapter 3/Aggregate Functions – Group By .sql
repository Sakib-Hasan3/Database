#Aggregate Functions – Group By

1.Find the average salary of instructors in each department

SQL>
SELECT dept_name, AVG(salary) AS avg_salary
FROM instructor
GROUP BY dept_name;


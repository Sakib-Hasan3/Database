-- 1.Find the names of those departments whose budget is higher than that of Astronomy. List them in alphabetic orde
SELECT dept_name from department
where department.budget>(SELECT budget from department where dept_name='Astronomy')
ORDER by dept_name;
#where clause 

SELECT name FROM instructor     #To find all instructors in Comp. Sci. dept
WHERE dept_name='computer science';


SELECT name FROM instructor   #To find all instructors in Comp. Sci. dept with salary > 70000
WHERE dept_name='computer science'
AND salary>70000;


01. Find the titles of courses in the Comp. Sci. department that have 3 credits.

SQL> SELECT title FROM course WHERE dept_name='computer science' AND credits='4';

02. Find the names of those departments whose budget is higher than that of Astronomy. List them
in alphabetic order. 

SQL> SELECT dept_name FROM department WHERE budget > ( SELECT budget FROM department WHERE dept_name = 'Astronomy' );
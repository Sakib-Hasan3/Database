-- 1. Find the titles of courses in the Comp. Sci. department that have 3 credits.

SQL> SELECT title FROM course WHERE dept_name = 'Comp. Sci.' AND credits = 3;
# Aggregate Functions

        avg:  average value
	min:  minimum value
	max:  maximum value
	sum:  sum of values
      count:  number of values


Example :


1. Find the average salary of instructors in the Computer Science department

SQL> 
SELECT AVG(salary)
FROM instructor
WHERE dept_name = 'Comp. Sci.';

2. Find the total number of instructors who teach a course in the Spring 2018 semester

SQL>
SELECT COUNT(DISTINCT ID)
FROM teaches
WHERE semester = 'Spring' AND year = 2018;

3. Find the number of tuples in the course relation

SQL>
SELECT COUNT(*)
FROM course;
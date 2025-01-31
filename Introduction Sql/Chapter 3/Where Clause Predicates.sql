
1. :  Find the names of all instructors with salary between $90,000 and $100,000 

SQL> SELECT name FROM faculty where salary between 90000 and 100000;

2. Tuple comparison

SQL> select name, course_id
from instructor, teaches
where (instructor.ID, dept_name) = (teaches.ID, 'Biology');



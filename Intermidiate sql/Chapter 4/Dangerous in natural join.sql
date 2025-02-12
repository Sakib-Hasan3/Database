
#Dangerous in Natural Joins


1. Unintended Attribute Matching
2. Loss of Information (Column Dropping)
3. Ambiguity and Unpredictability
4. Performance Issues
5. Difficult Debugging


Corrected version :
SQL> 
select name, title
from student natural join takes, course
where takes.course_id= course.course_id;

Incorrect version :
SQL>
select name, title
from student natural join takes natural join course;

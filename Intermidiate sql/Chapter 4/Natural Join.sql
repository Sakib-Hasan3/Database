SQL> SELECT student.name, takes.course_id #join two tuple from two table
FROM student
JOIN takes ON student.ID = takes.ID;



SQL>
#Same query in SQL with “natural join” construct

SELECT name, course_id
FROM student
NATURAL JOIN takes;

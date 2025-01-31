# Ordering the Display of Tuples

1. List in alphabetic order the names of all instructors 

SQL> SELECT DISTINCT name FROM faculty ORDER BY name;

2. desc for descending order

SQL> SELECT DISTINCT name FROM faculty ORDER BY name DESC;

3. ASC for ascending order

SQL> SELECT DISTINCT name FROM faculty ORDER BY name ASC;

4. Can sort on multiple attributes

SQL> SELECT DISTINCT name FROM faculty ORDER BY dept_name ,name;
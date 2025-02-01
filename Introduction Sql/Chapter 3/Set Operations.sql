#Set Operations

1. finds courses that ran in either Fall 2017 or Spring 2018 using the UNION operator.

# The UNION operator ensures that the results from both queries are combined while removing duplicates.

SQL> SELECT course_id  
FROM section 
WHERE sem = 'Fall' AND year = 2017

UNION

SELECT course_id  
FROM section 
WHERE sem = 'Spring' AND year = 2018;



2. uses the INTERSECT operator to find courses that were offered in both Fall 2017 and Spring 2018.

# INTERSECT operator returns only the courses that appear in both result sets (i.e., courses offered in both Fall 2017 and Spring 2018).

SELECT course_id  
FROM section 
WHERE sem = 'Fall' AND year = 2017

INTERSECT

SELECT course_id  
FROM section 
WHERE sem = 'Spring' AND year = 2018;


3. finds courses that ran in Fall 2017 but not in Spring 2018 using the EXCEPT operator

# EXCEPT operator returns only the courses from Fall 2017 that do not appear in Spring 2018.

SELECT course_id  
FROM section 
WHERE sem = 'Fall' AND year = 2017

EXCEPT

SELECT course_id  
FROM section 
WHERE sem = 'Spring' AND year = 2018;


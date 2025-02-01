#Set operations (cont)
#To retain all duplicates use the
1.union all,
2.intersect all
3.except all

1. you want to include duplicates, you can use UNION ALL instead:

SQL> 
SELECT course_id  
FROM section 
WHERE sem = 'Fall' AND year = 2017

UNION ALL

SELECT course_id  
FROM section 
WHERE sem = 'Spring' AND year = 2018;

2.Find courses that ran in both Fall 2017 and Spring 2018 (Allowing Duplicates)
Use INTERSECT ALL to include duplicate course occurrences:

SQL>
SELECT course_id  
FROM section 
WHERE sem = 'Fall' AND year = 2017

INTERSECT ALL

SELECT course_id  
FROM section 
WHERE sem = 'Spring' AND year = 2018;


3. Find courses that ran in Fall 2017 but not in Spring 2018 (Allowing Duplicates)

SQL>
SELECT course_id  
FROM section 
WHERE sem = 'Fall' AND year = 2017

EXCEPT ALL

SELECT course_id  
FROM section 
WHERE sem = 'Spring' AND year = 2018;

#the From and where clause example  


# Find the names of all instructors who have taught same course and the course_id

SELECT name, course_id FROM instructor , teaches
WHERE instructor.ID = teaches.ID; 
 

# Find the names of all instructors in the Art  department who have taught some course and the course_id

SELECT name,course_id
FROM instructor,teaches
WHERE instructor.ID=teaches.ID
AND instructor.dept_name='Mathmatics';

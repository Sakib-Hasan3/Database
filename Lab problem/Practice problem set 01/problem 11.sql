-- 11. Find the rank and name of the 10 students who earned the most A grades (A-, A, A+). 
-- Use alphabetical order by name to break ties.
SELECT s.ID, s.name, COUNT(t.grade) AS A_grades
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE t.grade IN ('A-', 'A', 'A+')
GROUP BY s.ID, s.name
ORDER BY A_grades DESC, s.name ASC
LIMIT 10;

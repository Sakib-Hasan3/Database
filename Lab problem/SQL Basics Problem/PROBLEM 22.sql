

-- 22. For each course section offered in 2009, find the average total credits (tot_cred) of all students enrolled in the section, if the section had at least 2 students.
SELECT t.course_id, t.sec_id, t.semester, t.year, AVG(s.tot_cred) AS avg_tot_cred
FROM takes t
JOIN student s ON t.ID = s.ID
WHERE t.year = 2009
GROUP BY t.course_id, t.sec_id, t.semester, t.year
HAVING COUNT(t.ID) >= 2;



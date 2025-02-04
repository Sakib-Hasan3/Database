

-- 7. Find the advisor of the student with ID 12345.
SELECT i.name 
FROM advisor a 
JOIN instructor i ON a.i_ID = i.ID 
WHERE a.s_ID = '12345';




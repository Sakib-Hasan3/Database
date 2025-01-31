#string operations

percent ( % ).  The % character matches any substring.
underscore ( _ ).  The _ character matches any character.


1. Find the names of all faculty whose name includes the substring “sak”.

SELECT name
FROM faculty
WHERE name LIKE '%sak%';


2. This query searches for an exact match where the name column has the value "100%". It does not use wildcards, so it will only return results where the name is exactly "100%". 


SELECT name
FROM faculty
WHERE name = '100%';

3. Which one should you use?
✅ Use = if the name must be exactly "100%".
✅ Use LIKE '%100%%' if "100%" is part of a longer string.
✅ Use LIKE '100 \%' ESCAPE '\' if you specifically need to escape %.
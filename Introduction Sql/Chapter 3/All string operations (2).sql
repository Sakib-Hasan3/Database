#All string operations

1. String Concatenation (|| or CONCAT())
Combining two or more strings.

SQL> SELECT CONCAT(name, ' ', dept_name) AS full_name FROM faculty;


2.  Substring Extraction (SUBSTRING(), LEFT(), RIGHT())
Extracting part of a string.
 
SQL> SELECT LEFT(name, 3) AS short_name FROM faculty;

3. Length of a String (LENGTH(), LEN())
Find the number of characters in a string.
 
SQL> SELECT LENGTH(name) AS name_length FROM faculty;

4. Converting Case (UPPER(), LOWER())
Convert text to uppercase or lowercase.

SQL> SELECT UPPER(name) AS uppercase_name, LOWER(name) AS lowercase_name FROM faculty;

5. Removing Spaces (TRIM(), LTRIM(), RTRIM())
Remove spaces from both sides


SQL> SELECT TRIM(name) FROM faculty;

>>Remove spaces from the left

SQL> SELECT LTRIM(name) FROM faculty;

>>Remove spaces from the right

SQL> SELECT RTRIM(name) FROM faculty;


6. 
It looks like you want to learn more about String Operations in SQL. Here are some key string operations commonly used in SQL:

1. String Concatenation (|| or CONCAT())
Combining two or more strings.

PostgreSQL, Oracle, SQL Server (with CONCAT())
sql
Copy
Edit
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM students;
MySQL
sql
Copy
Edit
SELECT CONCAT_WS(' ', first_name, last_name) AS full_name FROM students;
PostgreSQL Alternative (||)
sql
Copy
Edit
SELECT first_name || ' ' || last_name AS full_name FROM students;
2. Substring Extraction (SUBSTRING(), LEFT(), RIGHT())
Extracting part of a string.

Example: Extract first 3 letters of a name
sql
Copy
Edit
SELECT SUBSTRING(name FROM 1 FOR 3) AS short_name FROM faculty;
MySQL
sql
Copy
Edit
SELECT LEFT(name, 3) AS short_name FROM faculty;
3. Length of a String (LENGTH(), LEN())
Find the number of characters in a string.

sql
Copy
Edit
SELECT LENGTH(name) AS name_length FROM faculty;
SQL Server Alternative (LEN())
sql
Copy
Edit
SELECT LEN(name) AS name_length FROM faculty;
4. Converting Case (UPPER(), LOWER())
Convert text to uppercase or lowercase.


SELECT UPPER(name) AS uppercase_name, LOWER(name) AS lowercase_name FROM faculty;


5. Removing Spaces (TRIM(), LTRIM(), RTRIM())

>Remove spaces from both sides

SQL>SELECT TRIM(name) FROM faculty;

>Remove spaces from the left

SQL>SELECT LTRIM(name) FROM faculty;


>Remove spaces from the right

SQL>SELECT RTRIM(name) FROM faculty;

6. Replacing Substrings (REPLACE())
Replace a specific substring.

SQL>SELECT REPLACE(name, 'Dr.', '') AS clean_name FROM faculty;


7.  Searching for Patterns (LIKE, ILIKE, POSITION())

>Find the name where appears 'sak'

sql>SELECT name FROM faculty WHERE name LIKE '%sak%';

>find the position of 'sak'

sql> SELECT POSITION('sak' IN name) FROM faculty;


8. Reverse a string using reverse() function

SELECT REVERSE(name) FROM faculty;


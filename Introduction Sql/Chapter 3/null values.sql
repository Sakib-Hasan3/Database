#null operations

Note : null signifies an unknown value or that a value does not exist.

1. Example: Find all instructors whose salary is null.

SQL>
SELECT name FROM faculty 
WHERE salary IS null

NOTE: The predicate is not null succeeds if the value on which it is applied is not null.

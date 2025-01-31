# find the names of all instructors:

SELECT name FROM instructor;

# The keyword all specifies that duplicates should not be removed.

SELECT ALL dept_name FROM instructor ;

# The keyword DISTINCT specifies that duplicates should  be removed.

SELECT DISTINCT dept_name FROM instructor ;


# An attribute can be a literal with from  clause

SELECT 'A' FROM instructor

# An attribute can be a literal  with  no from  clause

SELECT '437' #Results is a table with one column and a single row with value “437”

SELECT '437' as FOO  #Can give the column a name using:


#An attribute can be a literal with from  clause
			

SELECT  'A' FROM instructor  # Result is a table with one column and N rows  each row with value “A”


#using arithmetic expression

SELECT ID, name, salary/12 FROM instructor                                                                                            #return a relation that is the same as the instructor relation, except that the value of the attribute salary is divided by 12.


#Can rename “salary/12” using the as clause
	        
SELECT ID, name, salary/12  as monthly_salary FROM instructor

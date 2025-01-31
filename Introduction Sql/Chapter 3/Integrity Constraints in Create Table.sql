#Integrity Constraints in Create Table

CREATE TABLE instructor (
    ID char(5),
    name varchar(20) NOT NULL,
    dept_name varchar(20),
    salary numeric(8,2),  # Example: 123456.78 is valid (8 digits in total: 6 before and 2 after the decimal).
    PRIMARY KEY (ID),
    FOREIGN KEY (dept_name) REFERENCES department
);

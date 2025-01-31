//Insert into table sql query

INSERT INTO classroom (building, room_number, capacity)
VALUES 
('Science Hall', '101', 50),
('Engineering', 'A12', 120),
('Library', '3A', 30);

INSERT INTO department (dept_name, building, budget)
VALUES 
('Computer Science', 'Engineering', 1000000.00),
('Physics', 'Science Hall', 750000.00),
('Mathematics', 'Library', 500000.00);

INSERT INTO course (course_id, title, dept_name, credits)
VALUES 
('CS101', 'Introduction to Programming', 'Computer Science', 4),
('PHY101', 'General Physics', 'Physics', 3),
('MATH101', 'Calculus I', 'Mathematics', 4);

INSERT INTO instructor (ID, name, dept_name, salary)
VALUES 
('I001', 'Dr. Smith', 'Computer Science', 95000.00),
('I002', 'Dr. Johnson', 'Physics', 87000.00),
('I003', 'Dr. Lee', 'Mathematics', 80000.00);

INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id)
VALUES 
('CS101', 'S1', 'Fall', 2023, 'Engineering', 'A12', 'T1'),
('PHY101', 'S2', 'Fall', 2023, 'Science Hall', '101', 'T2'),
('MATH101', 'S3', 'Spring', 2024, 'Library', '3A', 'T3');

INSERT INTO teaches (ID, course_id, sec_id, semester, year)
VALUES 
('I001', 'CS101', 'S1', 'Fall', 2023),
('I002', 'PHY101', 'S2', 'Fall', 2023),
('I003', 'MATH101', 'S3', 'Spring', 2024);

INSERT INTO student (ID, name, dept_name, tot_cred)
VALUES 
('S001', 'Alice', 'Computer Science', 15),
('S002', 'Bob', 'Physics', 12),
('S003', 'Carol', 'Mathematics', 18);

INSERT INTO takes (ID, course_id, sec_id, semester, year, grade)
VALUES 
('S001', 'CS101', 'S1', 'Fall', 2023, 'A'),
('S002', 'PHY101', 'S2', 'Fall', 2023, 'B'),
('S003', 'MATH101', 'S3', 'Spring', 2024, 'A');

INSERT INTO advisor (s_ID, i_ID)
VALUES 
('S001', 'I001'),
('S002', 'I002'),
('S003', 'I003');

INSERT INTO time_slot (time_slot_id, day, start_hr, start_min, end_hr, end_min)
VALUES 
('T1', 'M', 9, 0, 10, 30),
('T2', 'T', 11, 0, 12, 30),
('T3', 'W', 14, 0, 15, 30);

INSERT INTO prereq (course_id, prereq_id)
VALUES 
('CS101', 'MATH101'),
('PHY101', 'MATH101');

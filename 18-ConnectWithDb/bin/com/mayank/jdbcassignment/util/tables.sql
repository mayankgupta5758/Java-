create table student ( 
id INT PRIMARY KEY auto_increment, 
name VARCHAR(50), 
age INT, 
branch VARCHAR(50) 
);

create table registration (
reg_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT, course_name VARCHAR(50),
fees_paid DOUBLE, 
FOREIGN KEY (student_id) REFERENCES student(id) 
);

create table branch (
	b_id int PRIMARY KEY AUTO_INCREMENT,
    b_name Varchar(100),
    student_id int,
    FOREIGN KEY (student_id) REFERENCES student(id) 
);

create table courses(
    c_id int PRIMARY KEY AUTO_INCREMENT,
    c_name varchar(100),
    r_id int,
    FOREIGN KEY (r_id) REFERENCES registration(reg_id)
);


insert into courses(c_name, r_id) values
('Java', 1),
('MySQL', 2),
('Spring Boot', 3),
('Python', 4),
('Machine Learning', 5),
('Web Development', 6),
('Data Science', 7),
('React', 8),
('JavaScript', 9),
('C++', 10),
('Node.js', 11),
('Python', 12),
('Django', 13);


Insert into branch(b_name, student_id) values
("CSE", 1), ("IT", 2),("ME", 3),("ECE", 4), ("CS", 5),("CS", 6),("CSE", 12), ("CSE", 13),("CSE", 15);

INSERT INTO student (id, name, age, branch) VALUES
(1, 'Aman Sharma', 20, 'CS'),
(2, 'Neha Verma', 21, 'IT'),
(3, 'Rohit Kumar', 22, 'ME'),
(4, 'Priya Singh', 20, 'ECE'),
(5, 'Ankit Gupta', 23, 'CS'),
(6, 'Sneha Kapoor', 21, 'CS'),
(7, 'Rahul Mehta', 22, 'ECE');

INSERT INTO registration (student_id, course_name, fees_paid) VALUES
(1, 'Java', 8000),
(1, 'MySQL', 5000),
(1, 'Spring Boot', 7000),
(2, 'Python', 6000),
(2, 'Machine Learning', 9000),
(3, 'Web Development', 7500),
(4, 'Data Science', 10000),
(4, 'React', 7000),
(5, 'JavaScript', 6000),
(5, 'C++', 4000),
(5, 'Node.js', 6500),
(6, 'Python', 6500),
(6, 'Django', 7500),
(7, 'Java', 7000);
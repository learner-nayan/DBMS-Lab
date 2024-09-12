-- creating database
create database dbms_practice;
use dbms_practice;

-- creating tables in database
create table students(
	student_id int primary key,
    student_name varchar(25),
    age int,
    major varchar(50),
    year_of_study int
);

create table courses(
	course_id int primary key,
    course_name varchar(50),
    credit_hour int
);

create table enrollments(
	enrollment_id int primary key,
	student_id int,
    course_id int,
    enrollment_date date,
    foreign key(student_id)  references students(student_id),
    foreign key(course_id)  references courses(course_id)
);

-- inserting data into tables
insert into students values
(1,'Alice',20,'Computer Science', 2),
(2,'Bob',21,'Information Technology', 3),
(3,'Charlie',22,'Business Administration', 4);

insert into courses values
(101,'Database Systems', 3),
(102,'Operating Systems', 4),
(103,'Data Structures', 3);

insert into enrollments values
(1001,1,101, '2024-09-01'),
(1002,2,102, '2024-09-02'),
(1003,1,103, '2024-09-03'),
(1004,3,101, '2024-09-04');


-- 1. Receive all students studying Computer Science.
select * from students where major='Computer Science';

-- 2. Find the names and majors of students enrolled in the 'Database Systems' course.
select S.student_name, S.major from students as S
join enrollments as E on E.student_id=S.student_id
join courses as C on C.course_id=E.course_id
where C.course_name='Database Systems';


-- 3. List all courses that have 3 credit hours.
select * from courses where credit_hour=3;


-- 4. Count the number of students enrolled in each course.
select C.course_name, count(E.student_id) from courses as C 
join enrollments as E on C.course_id=E.course_id
join students as S on S.student_id=E.student_id
group by C.course_name;


-- 5. Find the names of students who are in there third year of study.
select student_name from students where year_of_study=3; 


-- 6. Update the age of a student with student_id = 1 to 21.
update students
set age=21
where student_id=1;


-- 7. Delete the enrollment record where student_id = 3 and course_id = 101.
delete from enrollments where student_id=3 and course_id=101;

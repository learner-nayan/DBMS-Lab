-- emp (eno, ename, bdate, title, salary, dno) 
-- proj (pno, pname, budget, dno)
-- dept (dno, dname, mgreno) 
-- workson (eno, pno, resp, hours)


create database sql_practice;
use sql_practice;
show tables;

create table employees(
	eno int primary key,
    ename varchar(20),
    dob date,
    title varchar(20),
    salary numeric(7,2),
    dno int,
    foreign key(dno) references departments(dno)
);

create table departments(
	dno int primary key,
    dname varchar(20),
    mgreno int
);

create table projects(
	pno int primary key,
    pname varchar(20),
    budget numeric(7,2),
    dno int,
    foreign key(dno) references departments(dno)
);

create table works_on(
	eno int,
    pno int,
    responsibility varchar(20),
    hours numeric,
    foreign key(eno) references employees(eno),
    foreign key(pno) references projects(pno)
);


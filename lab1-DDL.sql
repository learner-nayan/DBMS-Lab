create database dbms;
use dbms;

create table departments(
	deptno int primary key,
	dname varchar(20) not null,
	loc varchar(10)
);

create table employees(
	empno int primary key,
	ename varchar(20) not null,
	job varchar(10) not null,
	deptno int,
	sal numeric(7,2),
    foreign key(deptno) references departments(deptno)
);

alter table employees
add experience int;

alter table employees
modify job varchar(25);

create table employees1(
	empno int,
	ename varchar(20) not null,
    constraint chk_empno check (empno > 100)
);

alter table employees
drop column experience;

insert into departments values(5, 'Home Ministry', 'SD');
insert into employees values(1, 'Rabi', 'Politician', 5, 10000.55);

truncate employees;

drop table employees;
drop table departments;




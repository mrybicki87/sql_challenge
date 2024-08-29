--Created tables for titles, employees, dept_emp, departments, salaries and dept_managers for
--the 6 csv files.  Employee number and department number are the two primary keys used for 
--the tables, except for the titles table, which used the title_id as the primary.  The dept_emp
--table has both the emp_no and dept_no as primary keys, since neither column contains unique 
--values, as each department can have multiple employees, and each employee can work for 
--multiple departments.

create table titles (
title_id varchar not null primary key,
title varchar not null
);

create table employees (
emp_no integer not null primary key,
emp_title varchar not null,
foreign key (emp_title) references titles(title_id)
birth_date date not null,
first_name varchar not null,
last_name varchar not null,
sex varchar not null,
hire_date date not null
);

create table dept_emp(
emp_no integer not null primary key,
foreign key (emp_no) references employees(emp_no),
dept_no varchar not null primary key
);

create table departments(
dept_no varchar not null primary key,
foreign key (dept_no) references dept_emp(dept_no),
dept_name varchar not null
);

create table salaries (
emp_no integer not null primary key,
foreign key (emp_no) references employees(emp_no),
salary integer not null
);

create table dept_manager(
dept_no varchar not null,
emp_no integer not null primary key
foreign key (emp_no) references employees(emp_no),
);

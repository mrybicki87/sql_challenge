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

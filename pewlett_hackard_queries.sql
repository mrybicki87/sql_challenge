--Join employees and salaries to show employee number, first and last name, sex, and salary
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
inner join salaries as s
on e.emp_no = s.emp_no;

--List of employees from table employees that were hired in 1986
select * from employees
where hire_date >= '1986-01-01' and hire_date < '1987-01-01'; 

--Join the employees, dept_manager, and titles tables to show dept number, name, and the manager first and last name and employee number
select e.emp_no, d.dept_no, dept.dept_name, e.last_name, e.first_name
from dept_manager d
inner join departments as dept
on d.dept_no = dept.dept_no
inner join employees as e
on d.emp_no = e.emp_no;

--Join the employees, titles, dept_emp tables to show department number for each employee along with that employee’s employee number, 
--last name, first name, and department name
select d.dept_no, e.emp_no, e.last_name, e.first_name, dept.dept_name
from employees e
inner join dept_emp as d
on e.emp_no = d.emp_no
inner join departments as dept
on d.dept_no = dept.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B from employees table
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
select dept.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
inner join dept_emp as d
on e.emp_no = d.emp_no
inner join departments as dept
on d.dept_no = dept.dept_no
where dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select dept.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
inner join dept_emp as d
on e.emp_no = d.emp_no
inner join departments as dept
on d.dept_no = dept.dept_no
where dept_name = 'Sales' or  dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;


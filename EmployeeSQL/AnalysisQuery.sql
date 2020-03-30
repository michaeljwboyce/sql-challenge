-- 1. List the following details of each employee: employee number, 
-- last name, first name, gender, and salary.

select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e 
inner join salaries s on s.emp_no = e.emp_no
order by 1;

-- List employees who were hired in 1986.

select * from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.

select ma.dept_no, ma.from_date, ma.to_date, ma.emp_no, d.dept_name,  e.last_name, e.first_name
from dept_manager ma
left join employees e
on ma.emp_no = e.emp_no
left join departments d
on ma.dept_no = d.dept_no;

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.

select e.emp_no, d.dept_name, e.last_name, e.first_name
from employees e
inner join dept_emp
on e.emp_no = dept_emp.emp_no
inner join departments d 
on dept_emp.dept_no = d.dept_no
order by 1;

-- List all employees whose first name is "Hercules" and last names begin with "B."

select * from employees
where first_name='Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

select d.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

select d.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

select last_name, count(last_name) as "Employees" 
from employees
group by last_name
order by 2 desc;
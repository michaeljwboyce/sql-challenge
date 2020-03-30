create table salaries (
	emp_no varchar(30) not null,
	salary int not null,
	from_date date not null,
	to_date date not null)

create table titles (
	emp_no varchar(30) not null,
	title varchar(30) not null,
	from_date date not null,
	to_date date not null)

create table dept_manager (
	dept_no varchar(30) not null,
	emp_no varchar(30) not null,
	from_date date not null,
	to_date date not null)

create table dept_emp (
	emp_no varchar(30) not null,
	dept_no varchar(30) not null,
	from_date date not null,
	to_date date not null)

create table departments (
	dept_no varchar(30) not null,
	dept_name varchar(30) not null)

alter table employees
add primary key (emp_no)

alter table departments
add primary key (dept_no)

alter table salaries
add foreign key (emp_no) references employees(emp_no)

alter table titles
add foreign key (emp_no) references employees(emp_no);

alter table dept_manager
add foreign key (emp_no) references employees(emp_no);

alter table dept_emp
add foreign key (emp_no) references employees(emp_no);

alter table dept_manager
add foreign key (dept_no) references departments(dept_no);

alter table dept_emp
add foreign key (dept_no) references departments(dept_no);

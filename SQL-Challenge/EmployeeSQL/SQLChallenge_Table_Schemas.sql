-- Drop Tables if Existing
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

--Data Engineering: Creating table schemas for each .CSV
create table employees(
	emp_no integer not null,
	emp_title_id varchar (5) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
    sex varchar(1) not null,
    hire_date date not null,
	constraint "pk_employees" primary key (emp_no)
);

create table salaries(
	emp_no integer not null,
	salary integer not null,
	CONSTRAINT "pk_salaries" primary key (emp_no)
);

create table titles(
	title_id varchar(5) not null,
	title varchar(30) not null,
	constraint "pk_titles" primary key (title_id)
);

create table departments(
	dept_no varchar (4) not null,
	dept_name varchar (30) not null,
	CONSTRAINT "pk_departments" primary key (dept_no)
);

create table dept_emp(
	emp_no integer not null,
	dept_no varchar(4) not null,
	CONSTRAINT "pk_dept_emp" primary key (emp_no,dept_no)
);

create table dept_manager(
	dept_no varchar(4) not null,
	emp_no integer not null,
	CONSTRAINT "pk_dept_manager" primary key (emp_no)
);
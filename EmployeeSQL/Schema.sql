-- Schema

-- Drop tables if exists
drop TABLE employees;
drop TABLE departments;
drop TABLE dept_emp;
drop TABLE dept_manager;
drop TABLE salaries;
drop TABLE titles;

-- Create Table called employees
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);
-- View Table called employees
ALTER DATABASE "Employeesql" SET datestyle TO "ISO, MDY";
SELECT * FROM employees;

-- Create Table called departments
CREATE TABLE departments(
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY(dept_no)
);
-- View Table called departments
SELECT * FROM departments;
-- Create Table called departments-employees
CREATE TABLE dept_emp (
    emp_no INTEGER   NOT NULL,
	dept_no VARCHAR(10)   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
-- View Table called departments-employees
SELECT * FROM dept_emp;

--Create Table called department-manager
CREATE TABLE dept_manager (
    dept_no VARCHAR(10)   NOT NULL,
	emp_no INTEGER   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- View Table called departments-manager

SELECT * FROM dept_manager;

--Create Table called salaries
CREATE TABLE salaries (
    emp_no INTEGER   NOT NULL,
    salary INTEGER   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);
-- View Table called salaries
SELECT * FROM salaries;

--Create Table called titles
CREATE TABLE titles (
    title_id VARCHAR(10)   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    PRIMARY KEY (title_id)
);
-- View Table called titles
SELECT * FROM titles;



--Create Tables from CSV And order them correctly.
--Also input the CSV's in the order as they are listed here
--Listed Values at 30 to be positive all data fits.

CREATE TABLE titles (
title_id VARCHAR(30) NOT NULL PRIMARY KEY,
title VARCHAR(30) NOT NULL
);

CREATE TABLE departments (
dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
emp_no INT(30) NOT NULL PRIMARY KEY,
emp_title_id VARCHAR(30) NOT NULL,
birth_date DATE(30) NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,	
sex	VARCHAR(3) NOT NULL,
hire_date DATE(30) NOT NULL,
FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
emp_no INT(30) NOT NULL PRIMARY KEY,
salary INT(30) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);



--Query each table to see if tables run.
SELECT * from departments;
SELECT * from dept_emp;
SELECT * from dept_manager;
SELECT * from employees;
SELECT * from salaries;
SELECT * from titles;


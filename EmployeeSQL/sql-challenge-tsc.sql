CREATE TABLE departments (
	dept_no VARCHAR(255) SERIAL PRIMARY KEY,
	dept_name VARCHAR(100) NOT NULL
);
	
CREATE TABLE dept_emp (
	dept_no SERIAL PRIMARY KEY,
	emp_no INT NOT NULL
);

CREATE TABLE dept_manager (
	dept_no SERIAL PRIMARY KEY,
	emp_no INT NOT NULL
);

CREATE TABLE employees (
	emp_no SERIAL PRIMARY KEY,
	title_id VARCHAR(100),
	birth_date VARCHAR(100),
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	sex VARCHAR(5),
	hire_date VARCHAR(100)
);
	
CREATE TABLE salaries (
	emp_no SERIAL PRIMARY KEY,
	salary INT NOT NULL
);

CREATE TABLE titles (
	title_id SERIAL PRIMARY KEY,
	title VARCHAR(100)
);

<!-- Creating Tables -->
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(255) NOT NULL
);
	
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),  -- Composite primary key
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

    
CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)  -- Assuming 'departments' is the referenced table
);


-- Create the employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    title_id VARCHAR(100),
    birth_date DATE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    sex CHAR(1),
    hire_date DATE
);
	
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR(100) PRIMARY KEY,
	title VARCHAR(100)
);

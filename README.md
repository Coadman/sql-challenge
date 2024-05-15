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




<!-- Analysis -->

-- Problem 1
SELECT E.emp_no, E.first_name, E.last_name, E.sex, S.salary 
FROM public.employees AS E
JOIN public.salaries AS S
ON E.emp_no=S.emp_no;

-- Problem 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01-01-1986' AND '12-31-1986';

-- Problem 3
SELECT d.dept_name, d.dept_no, dm.emp_no, e.last_name, e.first_name 
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON d.dept_no= dm.dept_no;

-- Problem 4
SELECT DISTINCT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e 
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
ORDER BY e.emp_no;

-- Problem 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

-- Problem 6
SELECT e.emp_no, e.last_name, e.first_name 
FROM employees AS e 
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

-- Problem 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e 
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- Problem 8 
SELECT COUNT(last_name) AS frequency, last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


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


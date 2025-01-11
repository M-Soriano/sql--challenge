SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s on e.emp_no=s.emp_no;

SELECT  first_name, last_name, hire_date
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT dm.dept_no, dt.dept_name, dm.emp_no, e.last_name, e.first_name
FROM  dept_manager dm
JOIN departments dt on dm.dept_no = dt.dept_no
JOIN employees e on dm.emp_no = e.emp_no;

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, (SELECT dept_name FROM departments dt WHERE dt.dept_no=de.dept_no) as dept_name
FROM  employees e
JOIN dept_emp de on e.emp_no = de.emp_no;--- could also be inner join
WHERE


SELECT  e.first_name,  e.last_name, e.sex
FROM  employees e
WHERE first_name = 'Hercules' AND  last_name LIKE 'B%'

SELECT


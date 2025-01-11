--- Question 1

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s on e.emp_no=s.emp_no;

--- Question 2


SELECT  first_name, last_name, hire_date
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--- Question 3

SELECT dm.dept_no, dt.dept_name, dm.emp_no, e.last_name, e.first_name
FROM  dept_manager dm
JOIN departments dt on dm.dept_no = dt.dept_no
JOIN employees e on dm.emp_no = e.emp_no;

--- Question 4

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, dt.dept_name
FROM  employees e
JOIN dept_emp de on e.emp_no = de.emp_no--- could also be inner join
JOIN departments dt on de.dept_no = dt.dept_no;--- could also be inner join

--- Question 5

SELECT  e.first_name,  e.last_name, e.sex
FROM  employees e
WHERE first_name = 'Hercules' AND  last_name LIKE 'B%'

--- Question 6

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
inner JOIN dept_emp de on e.emp_no = de.emp_no--- could also be inner join
inner JOIN departments dt on de.dept_no = dt.dept_no--- could also be inner join
WHERE dt.dept_name = 'Sales';--- choose this instead of nested query to avoid employees with two departments

--- Question 7

SELECT e.emp_no, e.last_name, e.first_name,  dt.dept_name
FROM employees e
INNER JOIN dept_emp de on e.emp_no = de.emp_no
INNER JOIN departments dt on de.dept_no = dt.dept_no
WHERE dt.dept_name = 'Sales' OR dt.dept_name= 'Development'; --- choose this instead of nested query to avoid employees with two departments

--- Question 8

SELECT e.last_name, COUNT(e.last_name) AS frequency 
FROM employees e
GROUP BY e.last_name 
ORDER BY frequency DESC;




-- creating Department table
CREATE TABLE departments(
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Creating titles table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

-- Creating  employees table
CREATE TABLE employees(
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Creating  salaries table
CREATE TABLE salaries(
    emp_no INT PRIMARY KEY,
    salary DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Creating dept_emp table
CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(10),
	Primary KEY(emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Creating dept_Manager table
CREATE TABLE dept_Manager (
    dept_no VARCHAR(10),
    emp_no INTEGER,
	Primary KEY(dept_no,emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
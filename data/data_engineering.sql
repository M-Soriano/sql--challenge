-- creating Department table
CREATE TABLE departments(
    dept_no VARCHAR(10) PRIMARY KEY, --KEY
    dept_name VARCHAR(50) NOT NULL
);

-- Creating titles table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

-- Creating  employees table
CREATE TABLE employees(
    emp_no INTEGER(10) PRIMARY KEY,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
    FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

-- Creating  salaries table
CREATE TABLE salaries(
    emp_no INTEGER(10) PRIMARY KEY,
    salary NUMERIC(8,2) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
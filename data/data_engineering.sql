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


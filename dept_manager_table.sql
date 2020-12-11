--drop existing table
DROP TABLE dept_manager;

--create table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)

);

SELECT * FROM dept_manager
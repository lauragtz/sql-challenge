--drop existing table
DROP TABLE salaries;

--create new table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)


);

SELECT * FROM salaries
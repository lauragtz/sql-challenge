--1. list employee number, last name, first name, sex, & salary

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
  JOIN salaries AS s
  ON (e.emp_no = s.emp_no)
  
 --2. list first name, last name, & hire date of employees hired in 1986
SELECT emp_no, first_name, last_name, hire_date from Employees
WHERE hire_date > '1985-12-31'
AND hire_date < '1987-01-01';

--3. list the manager of every department with: department number, department name, manager's employee number, last name, & first name
SELECT m.dept_no, departments.dept_name, m.emp_no, employees.last_name, employees.first_name
FROM dept_manager AS m
INNER JOIN departments ON m.dept_no = departments.dept_no
INNER JOIN employees ON m.emp_no = employees.emp_no;

--4. Employee number, last name, first name, and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_manager ON
employees.emp_no = dept_manager.emp_no
INNER JOIN departments ON
dept_Manager.dept_no = departments.dept_no;


--5.Hercules: First Name, Last Name, & Sex
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6.Sales: Employee Number, Last Name, First Name, & Department Name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--7.Sales & Development: Employee Number, Last Name, First Name, & Department Name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';


--8.DESC order: frequency count of employee last names
SELECT last_name, COUNT(last_name)
FROM Employees
GROUP BY last_name
ORDER BY COUNT(last_name) desc;



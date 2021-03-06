-- SQL CHALLENGE - EMPLOYEE DATABASE
-- BY: JACK COHEN

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT emp_no AS "Employee Number",
last_name AS "Last Name",
first_name AS "First Name",
sex AS "Sex",
(SELECT salary AS "Salary"
FROM "Salaries" s
WHERE e.emp_no = s.emp_no)
FROM "Employees" e

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT last_name AS "Last Name",
first_name AS "First Name", 
hire_date AS "Hire Date"
FROM "Employees"
WHERE hire_date LIKE '%1986'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT 
	dept_no AS "Department Number",
	(SELECT dept_name AS "Department Name"
		FROM "Departments" d
		WHERE dm.dept_no = d.dept_no),
	emp_no AS "Employee Number",
	(SELECT last_name AS "Last Name"
		FROM "Employees" e
		WHERE dm.emp_no = e.emp_no),
	(SELECT first_name AS "First Name"
		FROM "Employees" e
		WHERE dm.emp_no = e.emp_no)
FROM "Department Managers" dm

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

CREATE VIEW emp_dept AS
SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM "Employees" e
	JOIN "Department Employees" de
	ON (e.emp_no = de.emp_no)
		JOIN "Departments" d
		ON (de.dept_no = d.dept_no)

SELECT * FROM emp_dept

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name AS "First Name",
	last_name AS "Last Name",
	sex AS "Sex"
FROM "Employees" e
WHERE first_name LIKE 'Hercules' 
AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
		
SELECT * FROM emp_dept
WHERE "Department Name" = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT * FROM emp_dept
WHERE "Department Name" = 'Sales'
OR "Department Name" = 'Development'

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT e.last_name AS "Last Name",
	COUNT(e.last_name) AS "Frequency"
FROM "Employees" e
GROUP BY "Last Name"
ORDER BY "Frequency" DESC

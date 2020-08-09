-- 3. Data Analysis

-- 3.a) List the following details of each employee: employee number, last name, first name, sex, and salary.

-- SELECT employees.emp_no, employees.last_name, employees.first_name, salaries.salary
-- FROM employees
-- JOIN salaries
-- ON employees.emp_no = salaries.emp_no

-- 3.b) List first name, last name, and hire date for employees who were hired in 1986

-- SELECT first_name, last_name, hire_date 
-- FROM employees
-- WHERE hire_date BETWEEN '01-01-1986' AND '12-31-1986';

-- 3.c) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name

-- SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name,employees.first_name
-- FROM departments
-- JOIN dept_manager
-- ON departments.dept_no = dept_manager.dept_no
-- JOIN employees
-- ON dept_manager.emp_no = employees.emp_no

-- 3.d) List the department of each employee with the following information: employee number, last name, first name, and department name.

-- SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- FROM employees
-- JOIN dept_manager
-- ON employees.emp_no = dept_manager.emp_no
-- JOIN departments
-- ON dept_manager.dept_no = departments.dept_no

-- 3.e) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- SELECT employees.first_name, employees.last_name, employees.sex
-- FROM employees
-- WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- 3.f) List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- FROM employees
-- JOIN dept_manager
-- ON employees.emp_no = dept_manager.emp_no
-- JOIN departments
-- ON dept_manager.dept_no = departments.dept_no
-- WHERE dept_name = 'Sales'

-- 3.g) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- FROM employees
-- JOIN dept_manager
-- ON employees.emp_no = dept_manager.emp_no
-- JOIN departments
-- ON dept_manager.dept_no = departments.dept_no
-- WHERE dept_name = 'Sales' OR dept_name = 'Development'

-- 3.h) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

-- SELECT employees.last_name, COUNT(last_name)
-- FROM employees
-- GROUP BY last_name
-- ORDER BY
-- COUNT (last_name) DESC;
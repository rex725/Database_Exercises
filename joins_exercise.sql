USE join_test_db;

SELECT *
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now();

SELECT dept_name, CONCAT(employees.first_name, ' ', employees.last_name)
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now()
AND employees.gender = 'F';

SELECT titles.title, COUNT(*)
FROM departments
JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE dept_emp.to_date > now()
AND titles.to_date > now()
AND departments.dept_name = "Customer Service"
GROUP BY titles.title;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name, salaries.salary
FROM salaries
JOIN dept_manager ON dept_manager.emp_no = salaries.emp_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now()
AND salaries.to_date > now();

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name, departments.dept_name,  CONCAT(managers.first_name, ' ', managers.last_name) AS managers_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees AS managers ON dept_manager.emp_no = managers.emp_no
WHERE dept_emp.to_date > now()
AND dept_manager.to_date > now();

SELECT employees.gender, AVG(salaries.salary)
FROM dept_manager
JOIN salaries ON salaries.emp_no = dept_manager.emp_no
JOIN employees ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > now()
AND salaries.to_date > now()
GROUP BY employees.gender;

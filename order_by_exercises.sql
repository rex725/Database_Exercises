USE employees;

SELECT first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya')
	AND gender = 'M'
ORDER BY last_name ASC, first_name ASC;
	
SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE 'e%'
	OR last_name LIKE '%e'
ORDER BY emp_no DESC;
	
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
	AND last_name LIKE '%e';
ORDER BY emp_no DESC;

SELECT birth_date, first_name, last_name, hire_date
FROM employees
WHERE birth_date like '%12-25'
	AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date ASC, hire_date DESC;
	
SELECT last_name
FROM employees
WHERE last_name like '%q%'
	AND last_name NOT LIKE '%qu%';


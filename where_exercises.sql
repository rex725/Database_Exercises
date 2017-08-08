USE employees;

SELECT first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya')
	AND gender = 'M';
	
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
	OR last_name LIKE '%e';
	
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
	AND last_name LIKE '%e';

SELECT birth_date
FROM employees
WHERE birth_date like '%12-25'
	AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';
	
SELECT last_name
FROM employees
WHERE last_name like '%q%'
	AND last_name NOT LIKE '%qu%';


USE employees;

SELECT COUNT(*)
FROM employees
WHERE (first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya')
GROUP BY gender;
	
	
SELECT CONCAT(last_name, ', ', first_name)
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY last_name;

SELECT DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE birth_date like '%12-25'
	AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date ASC, hire_date DESC;
	
SELECT COUNT(*), last_name, first_name
FROM employees
WHERE last_name like '%q%'
	AND last_name NOT LIKE '%qu%'
GROUP BY last_name, first_name
ORDER BY COUNT(*);

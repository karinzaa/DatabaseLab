--1913110449 Karin
--1
SELECT DISTINCT job_id
FROM employees;
--2
SELECT employee_id || ',' || first_name || ',' || 
last_name || ',' || email || ',' || phone_number || 
',' || hire_date || ',' || job_id || ',' || salary ||
',' || commission_pct || ',' || manager_id || ',' 
|| department_id the_output
FROM employees;
--3
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;
--4
SELECT last_name,job_id,hire_date
FROM employees
WHERE last_name IN ('Matos','Taylor');
--5
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20,50)
ORDER BY last_name;
--6
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%e%'
OR last_name LIKE '%e%a%';

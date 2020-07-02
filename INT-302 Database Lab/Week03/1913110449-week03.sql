--1913110449 Karin
--1
SELECT last_name, salary
FROM employees
WHERE salary > &emp_salary;

--2
SELECT last_name, salary, commission_pct
FROM employees 
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

--3
SELECT manager_id,employee_id, last_name, salary,commission_pct
FROM employees
WHERE manager_id = &manager_id
ORDER BY &order_colum;

--4
SELECT last_name
FROM employees 
WHERE substr(last_name,3)LIKE 'a%';

--5
SELECT last_name, job_id, salary
FROM employees 
WHERE job_id like 'SA_REP'
OR job_id LIKE 'ST_CRERK'
AND
salary NOT IN(2005,3000,7000);

--6
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct = 0.2;

--7
SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;
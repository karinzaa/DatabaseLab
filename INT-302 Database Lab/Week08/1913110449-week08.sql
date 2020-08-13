--1913110449 Karin
--1
SELECT last_name, salary
FROM employees
WHERE manager_id IN (SELECT employee_id
                     FROM employees
                     WHERE last_name = 'King');
--2
SELECT department_id, last_name, job_id
FROM employees 
WHERE department_id = (SELECT department_id 
                       FROM departments
                       WHERE department_name = 'Executive');
--3
SELECT last_name
FROM employees
WHERE salary > ANY (SELECT salary
                    FROM employees
                    WHERE department_id = 60);
--4
SELECT employee_id, last_name, salary
FROM employees 
WHERE salary > ANY (SELECT AVG(salary) 
                    FROM employees
                    WHERE last_name NOT LIKE '%u%'
                    GROUP BY department_id);
--5
UNDEFINE ENTER_NAME
SELECT last_name, hire_date
FROM employees
WHERE department_id = (SELECT department_id
                       FROM employees
                       WHERE last_name = '&&ENTER_NAME')
AND last_name != '&&ENTER_NAME';            
SELECT ROUND(AVG(salary), 2), MAX(salary),
MIN(salary), SUM(salary)
FROM employees
WHERE job_id LIKE '%REP%';

SELECT MIN(hire_date), MAX(hire_date)
FROM employees;

SELECT MIN(last_name) first_lastname, MAX(last_name) last_lastname
FROM employees;

SELECT COUNT(*)
FROM employees
WHERE department_id = 50;

SELECT COUNT(commission_pct)
FROM employees
WHERE department_id = 80;

SELECT COUNT(DISTINCT department_id)
FROM employees;

SELECT AVG(commission_pct)
FROM employees;

SELECT AVG(NVL(commission_pct, 0))
FROM employees;

SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id;

SELECT TO_CHAR(AVG(salary), '999,999.99') AS "Average Salary"
FROM employees
GROUP BY department_id
ORDER BY 1;

SELECT department_id DEPT_ID, job_id,SUM(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id;

SELECT department_id, COUNT(last_name)
FROM employees
GROUP BY department_id;

SELECT department_id, job_id, COUNT(last_name)
FROM employees
GROUP BY department_id, job_id
ORDER BY 1;

SELECT department_id, AVG(salary)
FROM employees
HAVING AVG(salary) > 8000
GROUP BY department_id;

SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 10000;

SELECT department_id, ROUND(AVG(salary), 2)"Average Salary"
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 10000;

SELECT job_id, TO_CHAR(SUM(salary), '999,999') payroll
FROM employees
WHERE job_id LIKE 'S%'
GROUP BY job_id
HAVING SUM(salary) > 13000
ORDER BY 1;

SELECT MAX(AVG(salary))
FROM employees
GROUP BY department_id;

SELECT COUNT(*) total 
FROM employees
WHERE hire_date LIKE '%06';

SELECT first_name, department_name,
FROM employees e JOIN departments d
ON e.department_id = d.department_id;

SELECT first_name, department_name, city
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id;
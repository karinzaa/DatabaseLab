SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;

SELECT job_id, job_title, max_salary*12 max_salary
FROM jobs
WHERE max_salary*12 = 240960;

SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'Whalen';

SELECT last_name
FROM employees
WHERE hire_date = '17-feb-04';

SELECT last_name, salary
FROM employees
WHERE salary <= 3000;

SELECT first_name,hire_date
FROM employees
WHERE hire_date < '1-jun-06';

SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500;

SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 2500 AND 3500;

SELECT last_name
FROM employees
WHERE last_name BETWEEN 'King' AND 'Smith';

SELECT last_name
FROM employees
WHERE last_name NOT BETWEEN 'King' AND 'Smith';

SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100,101,201);

SELECT employee_id, manager_id, department_id
FROM employees
WHERE last_name IN ('Hartstein','Vargas');
 
SELECT 'Dep:'||department_id || 'emp ''s id:'|| employee_id
|| ' is ' || last_name||' Salaly ='|| salary "Employe Detail"
FROM employees
WHERE department_id IN (10, 20);

SELECT first_name
FROM employees
WHERE first_name NOT LIKE '__u%';

SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '%03';

SELECT last_name
FROM employees
WHERE last_name LIKE '_o%';

SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE 'SA\_%' ESCAPE '\';

SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;

SELECT last_name, job_id, commission_pct
FROM employees
WHERE commission_pct IS NULL;

SELECT last_name, job_id, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;

SELECT * 
FROM employees
WHERE ROWNUM <= 3;

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary > 10000
AND job_id LIKE '%MAN%';

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary > 10000
OR job_id LIKE '%MAN%';

SELECT last_name, job_id
FROM employees
WHERE job_id NOT IN ('IT_PROG','ST_CLERK','SA_REP');

SELECT last_name, job_id, commission_pct
FROM employees
WHERE commission_pct IS NULL
AND job_id LIKE 'AD\_%' ESCAPE '\';

SELECT last_name, job_id, salary
FROM employees
WHERE (job_id = 'SA_REP'
OR job_id = 'AD_PRES')
AND salary > 15000;

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date ASC;

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;

SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal;

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY 3;

SELECT *
FROM employees
ORDER BY 8;

SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id, salary DESC;

SELECT last_name, department_id
FROM employees
WHERE department_id IN (20,50)
ORDER BY last_name;

SELECT employee_id, last_name, salary
FROM employees
WHERE employee_id = &employee_num;

SELECT last_name, department_id, salary*12
FROM employees
WHERE job_id = '&job_title';

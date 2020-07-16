--1913110449 Karin
--1
SELECT last_name || ' earns ' || TO_CHAR(salary, '$999,999.99')
|| ' monthly but wants ' || TO_CHAR(salary * 3, '$999,999.99')AS "Dream Salaries"
FROM employees;
--2
SELECT last_name, hire_date, TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6), 'monday'), 'fmDay," the" Ddspth" of " Month, fmYYYY')review
FROM employees;
--3
SELECT job_id, 
DECODE(job_id, 'AD_PRES' , 'A' 
             , 'ST_MAN'  , 'B'
             , 'IT_PROG' , 'C'
             , 'SA_REP'  , 'D'
             , 'ST_CLERK', 'E'
             , 'o') grade
FROM jobs;
--4
SELECT 'Dept:'||department_id ||' have '||COUNT(department_id) || ' employed' "Emp in dept"
FROM employees
WHERE department_id IS NOT NULL
GROUP BY department_id
ORDER BY department_id;
--5
SELECT e.department_id, department_name,COUNT(e.last_name) countdata
FROM employees e JOIN departments d
ON e.department_id = d.department_id
GROUP BY e.department_id,d.department_name
HAVING COUNT(e.last_name) < 3;
--6
SELECT e.last_name, e.job_id, d.department_id, department_name 
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON l.location_id = d.location_id
WHERE l.city = 'Toronto';
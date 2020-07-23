SELECT department_id, department_name, 
       location_id, city
FROM departments
NATURAL JOIN locations;

SELECT location_id, street_address, city, 
       state_province, country_name
FROM locations
NATURAL JOIN countries
ORDER BY 1 DESC;

SELECT employee_id, last_name, location_id,
       department_id
FROM employees JOIN departments
USING (department_id);

SELECT last_name, department_id, department_name
FROM employees JOIN departments
USING (department_id)
ORDER BY 2 DESC;

SELECT e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id
FROM employees e JOIN departments d
ON e.department_id = d.department_id;

SELECT employee_id, city, department_name, 
       country_name, region_name, job_title
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id
JOIN countries c
ON l.country_id = c.country_id
JOIN regions r
ON c.region_id = r.region_id
JOIN jobs j
ON e.job_id = j.job_id;

SELECT e.employee_id, e.last_name, e.department_id,
       d.department_id, d.location_id
FROM employees e JOIN departments d
ON e.department_id = d.department_id
AND e.manager_id = 149;

SELECT d.department_id, d.department_name, 
       l.location_id, l.city
FROM departments d JOIN locations l
ON d.location_id = l.location_id
WHERE department_id in (20,50);

SELECT worker.last_name emp, manager.last_name mgr
FROM employees worker JOIN employees manager
ON worker.manager_id = manager.employee_id;

SELECT worker.last_name emp, manager.last_name mgr
FROM employees worker JOIN employees manager
ON worker.manager_id = manager.employee_id;

SELECT worker.last_name emp, manager.last_name mgr
FROM employees worker JOIN employees manager
ON worker.manager_id = manager.employee_id
WHERE worker.last_name = 'Lorentz';

SELECT e.last_name, d.department_id,
d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON e.department_id = d.department_id;

SELECT e.last_name, d.department_id,
d.department_name
FROM employees e RIGHT OUTER JOIN departments d
ON e.department_id = d.department_id;

SELECT e.last_name, d.department_id,
d.department_name
FROM employees e FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

SELECT department_name, state_province
FROM departments d LEFT OUTER JOIN locations l
ON d.location_id = l.location_id
WHERE d.department_id in (10,20,30,40);

SELECT employee_id, first_name ||' '|| last_name AS fullname, 
       e.job_id, j.min_salary
FROM employees e JOIN jobs j
ON e.job_id = j.job_id
WHERE job_title NOT LIKE 'A%' AND job_title NOT LIKE 'P%'
AND min_salary = 4000;
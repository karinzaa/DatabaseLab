--1913110449 Karin
--1
SELECT SUBSTR(department_name,0,8)department_name, state_province, SUBSTR(city,0,7)city
FROM departments d JOIN locations l
ON d.location_id = l.location_id
WHERE state_province NOT LIKE '%h';
--3
SELECT location_id, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(street_address),'0'),'1')'2')'3')'4')'5')'6')'7')'8')'9') ,"1"country_name
FROM locations l JOIN countries c
ON l.country_id = c.country_id
WHERE location_id > 2700;
--4
SELECT first_name, salary, department_name,city
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id
WHERE salary IN (12000,13000);
--5
SELECT country_id || ' ' || country_name country, region_name
FROM countries c JOIN regions r
ON c.region_id = r.region_id
WHERE region_name LIKE 'Asia';
--6
SELECT last_name, TO_CHAR(hire_date,'Dy dd/mm/yy')hire_date, e.job_id, job_title
FROM employees e JOIN jobs j
ON e.job_id = j.job_id
WHERE UPPER(e.job_id) = UPPER('&job_id');
--7
SELECT e.employee_id,TO_CHAR(j.start_date,'Day dd mon yy')start_date,j.end_date,
       d.department_name,ROUND((end_date - start_date)/7) AS "week of work day"
FROM employees e JOIN job_history j
ON e.employee_id = j.employee_id
JOIN departments d
ON e.department_id = d.department_id
WHERE e.employee_id BETWEEN 170 AND 200;
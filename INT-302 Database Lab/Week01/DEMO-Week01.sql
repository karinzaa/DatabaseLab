SELECT employee_id,first_name
FROM employees;

SELECT * 
FROM jobs;

SELECT department_id, location_id
FROM departments;

SELECT first_name, salary, 12*(salary+100)
FROM employees;

SELECT job_id, job_title, min_Salary,
min_salary *1.05 "Min Salary"
FROM jobs;

SELECT last_name AS name, commission_pct comm
FROM employees;

SELECT employee_id code,
first_name "Emp Name",
salary*12"Annual Salary"
FROM employees;

SELECT first_name, last_name,
first_name || ' ' || last_name name
FROM employees;

SELECT location_id, street_address,
postal_code,
city || ' ' || state_province city
FROM locations;

SELECT last_name ||': 1 Month salary = '|| salary monthly
FROM employees;

SELECT department_name || 'is manage by: ' || manager_id "Dept Manager"
FROM departments;

SELECT first_name ||'''s Departmen Id: '||employee_id "Employee Name Department"
FROM employees;

SELECT DISTINCT department_id 
FROM employees;

SELECT DISTINCT department_id,job_id 
FROM employees;

DESCRIBE jobs;
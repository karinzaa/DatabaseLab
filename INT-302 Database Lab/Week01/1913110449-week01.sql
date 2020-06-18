--1913110449 Karin

--1
SELECT * 
FROM employees;

--2
SELECT *
FROM countries;

--3
SELECT employee_id,
first_name || ' ' || last_name employee_name,salary
FROM employees;

--4
SELECT 'Emp Id: ' || employee_id || ' '|| last_name ||' get salary '|| salary ||
' per mounth x 12 = '||salary*12 employee_salary
FROM employees;

--4
select ' Emp Id: '|| employee_id ||' get salary '|| salary || ' per month x 12 = '|| salary*12 EMPLOYEE_SALARY
from employees;

--5
select job_id  || ' job''s title is ' ||  job_title JOBS_TITLE
from jobs;

--6
select distinct department_id
from employees;
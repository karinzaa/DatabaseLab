--1913110449 Karin
--1
SELECT employee_id, hire_date, add_months(hire_date,6)"6th month review date",
next_day(hire_date,'friday')"Next Friday",last_day(hire_date)"Last Day",months_between(SYSDATE,hire_date)"Month Work"
FROM employees
WHERE months_between(SYSDATE,hire_date) > 200;
--2
SELECT last_name,length(last_name)"Lenghts"
FROM employees
where last_name like ('A%') OR last_name like ('J%')OR last_name like ('M%');
--3
SELECT employee_id, last_name,salary,round(salary*1.155)"New Salary"
FROM employees;
--4
SELECT trim('-' FROM SUBSTR(hire_date,4,4)) || ' ' || 
trim('-' FROM SUBSTR(hire_date,1,2)) || ', ' || trim('-' FROM SUBSTR(hire_date,8))AS "Hire Date"
FROM employees;
--5
SELECT last_name, TRUNC((SYSDATE-hire_date)/7,0) AS tenure
FROM employees
WHERE department_id = 90
ORDER BY 2 desc;
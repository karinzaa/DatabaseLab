SELECT 'The job id for ' || UPPER(last_name) ||
' is ' || LOWER(job_id) AS "EMPLOYEE DETAILS"
FROM employees;

SELECT employee_id, last_name, department_id
FROM employees
WHERE LOWER(last_name) = 'higgins';

SELECT employee_id, last_name, department_id
FROM employees
WHERE initcap(last_name) = 'Higgins';

SELECT employee_id,
CONCAT(first_name,last_name)NAME,
job_id,
LENGTH(last_name),
INSTR(last_name,'a')"Contains 'a'?"
FROM employees
WHERE SUBSTR(job_id,4) = 'REP';

SELECT employee_id,
CONCAT(first_name,last_name)NAME,
job_id,
LENGTH(last_name),
INSTR(last_name,'a')"Contains 'a'?"
FROM employees
WHERE last_name like '%n';

SELECT employee_id,
CONCAT(CONCAT(first_name,''),last_name)NAME,
job_id,
LENGTH(last_name),
INSTR(last_name,'a')"Contains 'a'?"
FROM employees
WHERE last_name like '%n';

SELECT LPAD('5000', 10, '*')
FROM dual;

SELECT RPAD('5000', 10, '*')
FROM dual;

SELECT first_name,RPAD(first_name,20,' ') first_name1,
LPAD(first_name, 20,'*') first_name21
FROM employees;

SELECT MOD(1750,160)
FROM dual;

SELECT last_name, salary,
MOD(salary , 5000) "Mod Salary"
FROM employees
WHERE job_id = 'SA_REP';

SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '%03';

SELECT SYSDATE
FROM dual;

SELECT last_name, (SYSDATE-hire_date)/7 AS WEEKS
FROM employees
WHERE department_id = 90;

SELECT last_name,
ROUND(MONTHS_BETWEEN(SYSDATE, hire_date))
AS MONTHS_WORKED
FROM employees;

SELECT employee_id, hire_date,
ROUND(hire_date, 'MONTH') AS ROUNDMONTH,
TRUNC(hire_date, 'MONTH') AS TRUNCMONTH
FROM employees
WHERE hire_date LIKE '%05';

SELECT employee_id, hire_date,
ADD_MONTHS(hire_date, 6) "Hire Date",
NEXT_DAY(hire_date, 'Friday') "Next Hirdate",
LAST_DAY(hire_date) "Last Hirdate",
months_between(sysdate,hire_date) tenure
FROM employees
WHERE months_between(sysdate,hire_date) > 200
ORDER BY tenure DESC;


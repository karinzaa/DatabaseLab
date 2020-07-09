SELECT employee_id,
TO_CHAR(hire_date, 'DY DD/MON/YY') Month_Hired
FROM employees
WHERE last_name = 'Higgins';

SELECT last_name,
TO_CHAR(hire_date, 'fmDD Month YYYY')
AS HIREDATE
FROM employees;

SELECT last_name,
TO_CHAR(hire_date, 'fmDdspth "of" Month YYYY fmHH12:MI:SS AM')
AS HIREDATE
FROM employees;

SELECT TO_CHAR(salary, '$99,999.999') SALARY
FROM employees
WHERE last_name = 'Ernst';

SELECT last_name,
UPPER(CONCAT(SUBSTR(last_name,1,8),'_US'))
AS "Last name"
FROM employees
WHERE department_id = 60;

SELECT hire_date,
add_months(next_day(hire_date,'friday'),6)
FROM employees;

SELECT hire_date,
TO_CHAR(next_day(add_months(hire_date,6),
'friday'),'fmDay,Month ddth,YYYY')
AS "Next 6 Month Review"
FROM employees;

SELECT last_name, salary, commission_pct,
NVL(commission_pct,0) NVL_COMMISSION_PCT,
(salary*12) + (salary*12*NVL(commission_pct,0)) AN_SAL
FROM employees;

SELECT last_name, salary, commission_pct,
NVL2(commission_pct, 'SAL+COM', 'SAL') AS INCOME
FROM employees
WHERE department_id IN (50, 80);

SELECT first_name, LENGTH(first_name) "expr1",
last_name, LENGTH(last_name) "expr2",
NULLIF(LENGTH(first_name), LENGTH(last_name)) "result"
FROM employees;

SELECT last_name, manager_id, commission_pct,
COALESCE(TO_CHAR(commission_pct), TO_CHAR(manager_id),
'No commission and No manager') AS EXPRESSION
FROM employees;

SELECT last_name, salary, commission_pct,
COALESCE(commission_pct*salary+salary ,salary + 2000)
"New Salary"
FROM employees;

SELECT last_name, job_id, salary,
    TO_CHAR(CASE job_id WHEN 'IT_PROG'  THEN 1.10*salary
                WHEN 'ST_CLERK' THEN 1.15*salary
                WHEN 'SA_REP'   THEN 1.20*salary
                ELSE salary
    END,'99,999.99') AS "REVISED SALARY"
FROM employees;

SELECT last_name, job_id, salary,
    TO_CHAR(decode( job_id  ,'IT_PROG'   , 1.10*salary
                            , 'ST_CLERK' , 1.15*salary
                            , 'SA_REP'   , 1.20*salary
                            , salary
                ),'99,999.99') AS "REVISED SALARY"
FROM employees;

SELECT last_name, salary,
    CASE        WHEN salary < 5000 THEN 'Low'
                WHEN salary < 10000 THEN 'Medium'
                WHEN salary < 20000 THEN 'Good'
    END AS "Qualified_Salary"
FROM employees;

SELECT last_name, salary,
    CASE    WHEN salary < 10000 THEN 0.4
            WHEN salary < 12000 THEN 0.42
            WHEN salary < 14000 THEN 0.44
            WHEN salary < 16000 THEN 0.45
    END "Tex Rate"
FROM employees
WHERE department_id = 80 
ORDER BY 2 desc;

SELECT job_id, job_title, min_salary,
TO_CHAR(CASE WHEN job_title LIKE 'A%' THEN min_salary * 1.10
             WHEN job_title LIKE 'P%' THEN min_salary * 1.20
             ELSE min_salary
        END,'99,999.99') new_min
FROM jobs;
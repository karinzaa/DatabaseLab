--DEMO BEFORE MID
SELECT location_id, department_name, COUNT(*) AS "Emp num"
FROM departments d JOIN employees e 
on d.department_id = e.department_id
WHERE location_id = 1700
GROUP BY location_id, department_name
HAVING COUNT(*) > 1;
--DEMO NOW
SELECT last_name
FROM employees 
WHERE salary > (SELECT salary
                FROM employees 
                WHERE last_name = 'Abel');
                
SELECT last_name
FROM employees
WHERE salary > (SELECT salary
                FROM employees
                WHERE employee_id = 149);
                
SELECT last_name, job_id, salary
FROM employees
WHERE salary < (SELECT avg(salary)
                FROM employees);
                
SELECT last_name, job_id
FROM employees
WHERE job_id = (SELECT job_id
                FROM employees
                WHERE employee_id = 141);
                
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = (SELECT job_id
                FROM employees
                WHERE employee_id = 141)              
AND salary > (SELECT salary
              FROM employees
              WHERE employee_id = 141);

SELECT last_name, job_id, salary
FROM employees
WHERE (job_id, salary) = (SELECT job_id, salary
                          FROM employees
                          WHERE employee_id = 141);               
                
SELECT last_name, job_id, salary
FROM employees
WHERE salary = (SELECT MIN(salary)
                FROM employees);      
                
SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) > (SELECT MIN(salary)
                      FROM employees
                      WHERE department_id = 50);
                
SELECT job_id,AVG(salary)
FROM employees
GROUP BY job_id  
HAVING AVG(salary) = (SELECT MIN(AVG(salary))
                      FROM employees
                      GROUP BY job_id);
                      
SELECT last_name, salary, department_id
FROM employees
WHERE salary IN (SELECT MIN(salary)
                 FROM employees
                 GROUP BY department_id);
                 
SELECT department_id, last_name
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE last_name LIKE '%u%');
                        
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE job_id != 'IT_PROG'
AND salary < ANY (SELECT salary
                  FROM employees
                  WHERE job_id = 'IT_PROG');
                
SELECT first_name||' '||last_name fullmame, 
       TO_CHAR(salary,'99,999') salary, e.job_id, job_title
FROM employees e JOIN jobs j
ON e.job_id = j.job_id
WHERE salary > (SELECT AVG(salary)
                FROM employees)
AND job_title NOT LIKE '%t%'
ORDER BY 3;
                
                
                
                
                
                
                
                
                
                
                
                
                
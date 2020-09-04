--1913110449 Karin
--1
CREATE OR REPLACE VIEW employees_vu
AS SELECT employee_id, last_name employee, department_id
FROM employees;

--2
CREATE OR REPLACE VIEW dept50
AS SELECT employee_id empno, last_name employee,department_id deptno
FROM employees
WHERE department_id = 50;

--3
CREATE SEQUENCE dept_id_seq
INCREMENT BY 10
START WITH 200
MAXVALUE 1000
NOCACHE
NOCYCLE;

--4
INSERT INTO dept(dep_id, dep_name) 
VALUES(DEPT_ID_SEQ.nextval, 'Education')
INSERT INTO dept(dep_id, dep_name) 
VALUES(DEPT_ID_SEQ.nextval, 'Administration');

--5
CREATE OR REPLACE VIEW ve1
AS SELECT job_id COUNT(employee_id) frequency
FROM employees
WHERE job_id LIKE 'AD%'
GROUP BY job_id;

--6
CREATE OR REPLACE VIEW ve2
AS SELECT last_name, hire_date
FROM employees
WHERE to_char(hire_date, 'DD') < 16;
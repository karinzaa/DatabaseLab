--DEMO BEFORE THIS WEEK
SELECT first_name||' '||last_name fullnane,TO_CHAR(salary,'999,999')salary, j.job_id, job_title
FROM employees e join jobs j
ON e.job_id = j.job_id
WHERE salary > (SELECT AVG(salary)
                FROM employees)
AND job_title NOT LIKE '%t%';
--THIS WEEK
CREATE TABLE CUSTOMER
(CUST_NO NUMBER(5) PRIMARY KEY,
 NAME CHAR(20) NOT NULL,
 ADDRESS VARCHAR2(40) NOT NULL,
 DOB DATE,
 ID_CARD_NO NUMBER(13) UNIQUE,
 CUST_TYPE CHAR(1) CHECK(CUST_TYPE in('A','B','C'))
);

CREATE TABLE ORDER1
(ORD_NO NUMBER(5) PRIMARY KEY,
 ORD_DATE DATE DEFAULT SYSDATE NOT NULL,
 AMOUNT NUMBER(9,2) NOT NULL,
 CUST_NO NUMBER(5) REFERENCES CUSTOMER(CUST_NO)
);

CREATE TABLE suppliers
(sub_id NUMBER(5) PRIMARY KEY,
 sub_name VARCHAR2(20) NOT NULL,
 address VARCHAR2(30) NOT NULL
);

CREATE TABLE customers
(id NUMBER(5) PRIMARY KEY,
 c_name VARCHAR2(15) NOT NULL,
 age NUMBER(3) NOT NULL
);

CREATE TABLE depts
(dept_id NUMBER(5) PRIMARY KEY,
 dept_name VARCHAR2(15)
);

CREATE TABLE emps
(emp_id NUMBER(5) PRIMARY KEY,
 emp_name VARCHAR2(15) NOT NULL,
 salary NUMBER(7,2) NOT NULL,
 dept_id NUMBER(5) REFERENCES depts(dept_id)
);

CREATE TABLE dept80
AS SELECT employee_id, last_name, salary, hire_date
FROM employees
WHERE department_id = 80;

SELECT *
FROM dept80;

CREATE TABLE SALES_REPS (id, name, salary, commission)
AS SELECT employee_id, first_name, salary, commission_pct
FROM employees
WHERE job_id = 'SA_REP';

SELECT *
FROM SALES_REPS;

ALTER TABLE dept80
ADD (fname CHAR(30));
DESC dept80;

ALTER TABLE customers
ADD (address varchar2(50),
     salary number(10,2)
     );

ALTER TABLE dept80
MODIFY (last_name char(30));
DESC dept80;

ALTER TABLE dept80
DROP COLUMN fname;
DESC dept80;

ALTER TABLE customers
RENAME COLUMN id TO cus_id;
DESC customers;

ALTER TABLE customers RENAME TO contacts;

DESC sales_reps;
DESC employees;

ALTER TABLE sales_reps
ADD CONSTRAINT emp_id_pk PRIMARY KEY(id);
DESC sales_reps;

ALTER TABLE depts
MODIFY (dep_id NUMBER(6));

ALTER TABLE sales_reps
ADD CONSTRAINT emp_dept_id_fk
FOREIGN KEY(id) REFERENCES depts(dep_id);
DESC depts;

DROP TABLE suppliers;
DROP TABLE sales_reps;
DROP TABLE depts;
DROP TABLE dept80;
DROP TABLE contacts;
DROP TABLE emps;
DROP TABLE customer;
DROP TABLE order1;


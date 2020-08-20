--1913110449 Karin
--1
CREATE TABLE dept2
(id NUMBER(7),
 name VARCHAR2(30)
);
DESC dept2;
--2
INSERT INTO dept2
SELECT department_id,department_name
FROM departments;
--3
CREATE TABLE emp2
(id NUMBER(7),
 last_name VARCHAR2(25),
 first_name VARCHAR2(25),
 dept_id NUMBER(7)
);

DESC emp2;
--4
ALTER TABLE emp2
MODIFY(last_name VARCHAR2(30));
--5
ALTER TABLE emp2
ADD CONSTRAINT my_emp_id_pk PRIMARY KEY(id);
--6
ALTER TABLE dept2
ADD CONSTRAINT my_dept_id_pk PRIMARY KEY(id);
--7
ALTER TABLE emp2
ADD CONSTRAINT my_emp_dept_id_fk
FOREIGN KEY (dept_id) REFERENCES dept2(dep_id);
--8
ALTER TABLE emp2
MODIFY(commmission NUMBER(2,2)) CHECK(commmission > 0);
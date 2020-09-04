--Before this week
create table student
( stu_num number(3) primary key ,
 stu_lname varchar2(10) not null
);
  create table class
(class_code char(5) primary key ,
 class_section  char(2) ,
 crs_code  char(7) not null
);
create table enroll
(class_code char(5) references class(class_code ),
 stu_num number(3) references student(stu_num),
 enroll_grade char(2),
 primary key (class_code,stu_num)
);
insert into student
VALUES(201,'Somjit');
insert into student
VALUES(205,'Manee');
select * from student;
   
insert into class
values ('P9056' ,'01','int-301');
insert into class
values ('P8020' ,'03','ite-303');
insert into class
values ('P7034' ,'02','jpn-102');
select * from class;
   
insert into enroll
values ('P8020',205,'B+');
insert into enroll
values ('P7034',201,'C+');
insert into enroll
values ('P9056',205,'A');
insert into enroll
values ('P8020',201,'D+');
select *  from enroll;
--This week
CREATE VIEW emp80
AS SELECT employee_id, last_name,salary
FROM employees
WHERE department_id = 80;

CREATE VIEW empit
    AS SELECT employee_id, last_name, job_title
    FROM employees e JOIN jobs j
    ON e.job_id = j.job_id
    WHERE e.job_id = 'IT_PROG'
SELECT * FROM empit;

CREATE VIEW sal50
AS SELECT employee_id, ID_NUMBER, 
          last_name, salary * 12 ANN_SALARY
          FROM employees
          WHERE department_id = 50;
SELECT * FROM sal50

CREATE VIEW dept_view ("Dep No","Dep Name","Emp_Name")
AS SELECT e.department_id, d.department_name, first_name
FROM departments d JOIN employees e
ON d.department_id = e.department_id
WHERE d.department_id = 100;

CREATE OR REPLACE VIEW emp80
(id_number, name, sal, department_id)
AS SELECT employee_id, first_name || ' ' || last_name, salary, department_id

FROM employees
WHERE department_id = 80;

CREATE OR REPLACE VIEW empit
AS SELECT employee_id, first_name || ' ' || last_name "Name",
          0.03* salary ||' BAHT', job_title  
   FROM employees e JOIN jobs j
   ON e.job_id = j.job_id
   WHERE e.job_id IN('PU_CLERK', 'ST_CLERK');
SELECT * FROM empit;

CREATE OR REPLACE VIEW dept_sum_vu
(name, minsal, maxsal, avgsal)
AS SELECT department_name, MIN(salary),

MAX(salary),AVG(salary)
FROM employees e,departments d
WHERE e.department_id = d.department_id
GROUP BY department_name;
SELECT * FROM dept_sum_vu;

CREATE OR REPLACE VIEW JOB_VIEW
("JOB NAME", "AVG NAME", "TOTAL NAME")
AS SELECT job_id j JOIN employees e
ON e.job_id = j.job_id
WHERE job_title LIKE 'P%' OR job_title LIKE 'S%'
GROUP BY job_title
HAVING SUM(salary) > 10000
ORDER BY 1;
SELECT * FROM job_view;

CREATE SEQUENCE dept_deptid_seq
INCREMENT BY 10
START WITH 300
MAXVALUE 9999
NOCACHE
NOCYCLE;

INSERT INTO departments(department_id,
department_name, location_id)
VALUES (dept_deptid_seq.NEXTVAL, 'Support', 2500);
SELECT * FROM departments;

INSERT INTO departments(department_id,
department_name, location_id)
VALUES (dept_deptid_seq.NEXTVAL, 'HR', 1400);
SELECT * FROM departments;

SELECT dept_deptid_seq.CURRVAL FROM dual;

ALTER SEQUENCE dept_deptid_seq
INCREMENT BY 20
MAXVALUE 999999
NOCACHE
NOCYCLE;

INSERT INTO departments(department_id, department_name, location_id)
VALUES (dept_deptid_seq.NEXTVAL, 'Engineer', 1800);
SELECT * FROM departments;

CREATE TABLE dept
(dep_id NUMBER(3),
 dep_name VARCHAR2(20)
);
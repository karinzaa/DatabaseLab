--1913110449 Karin
--1
DECLARE
 j_id jobs.job_id%TYPE;
 j_title jobs.job_title%TYPE;
 j_min jobs.min_salary%TYPE;
 j_max jobs.max_salary%TYPE;
BEGIN 
 SELECT job_id, job_title, min_salary, max_salary
 INTO  j_id, j_title, j_min, j_max
 FROM jobs
 WHERE job_id = 'IT_PROG';
 DBMS_OUTPUT.PUT_LINE('JOB ID : ' || j_id);
 DBMS_OUTPUT.PUT_LINE('JOB TITLE : ' || j_title);
 DBMS_OUTPUT.PUT_LINE('MIN SALARY : ' || j_min);
 DBMS_OUTPUT.PUT_LINE('MAX SALARY : ' || j_max);
END;
/

--2
DECLARE
 cust_name VARCHAR2(15) := '&CUST_NAME';
 price CONSTANT NUMBER := 399;
 serv NUMBER(4,2);
 vat NUMBER(4,2);
 net NUMBER(5,2); 
BEGIN
 DBMS_OUTPUT.PUT_LINE('Customer : ' || cust_name);
 DBMS_OUTPUT.PUT_LINE('Price of food : ' || price);
 serv := price * 0.05;
 DBMS_OUTPUT.PUT_LINE('Service Charge : ' || serv);
 vat := price * 0.07;
 DBMS_OUTPUT.PUT_LINE('Vat(7%) : ' || vat);
 net := price + serv + vat;
 DBMS_OUTPUT.PUT_LINE('Net price : ' || net);
END;
/
--3
DECLARE
 name CONSTANT VARCHAR2(30) := 'Supachai Jivarun';
 credit CONSTANT NUMBER(1) := 9;
 total NUMBER(6);
 register NUMBER(3) := 800;
BEGIN 
 DBMS_OUTPUT.PUT_LINE('Student Name : ' || name);
 DBMS_OUTPUT.PUT_LINE('Total Credit : ' || credit);
 DBMS_OUTPUT.PUT_LINE('Price per credit : ' || register);
 total := credit * register;
 DBMS_OUTPUT.PUT_LINE('Total to pay : ' || total);
END;
/
--4
DECLARE
 my_name VARCHAR2(50) := 'Steven King';
 department VARCHAR2(50) := 'Adminstration';
BEGIN 
 DECLARE
   my_name VARCHAR2(50) := 'John Chann';
   job_name VARCHAR2(50) := 'Programmer';
   BEGIN 
   DBMS_OUTPUT.PUT_LINE('My name is: ' || my_name);
   DBMS_OUTPUT.PUT_LINE('My job is : ' || job_name);
   DBMS_OUTPUT.PUT_LINE('My department : ' || department);
 END;
 DBMS_OUTPUT.PUT_LINE('My name is: ' || my_name);
 DBMS_OUTPUT.PUT_LINE('My department : ' || department);
END;
/
/*
My name is: John Chann
My job is : Programmer
My department : Adminstration
My name is: Steven King
My department : Adminstration
*/
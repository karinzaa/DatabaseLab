CREATE TABLE JOB_BK
( job_id VARCHAR2(10) PRIMARY KEY,
  job_title VARCHAR2(25) NOT NULL,
  min_salary NUMBER(6),
  max_salary NUMBER(6)
);

BEGIN
 INSERT INTO job_bk
 VALUES ('EN_MGR','Engineer Manger',20000,60000);
 insert INTO job_bk
 VALUES ('COM_EN','Computer Engineer',10000,25000);
 insert INTO job_bk
 VALUES ('INST','Instructor',5000,10000);
END;
/
DECLARE
 v_rows_deleted VARCHAR2(30)
 v_empno employees.employee_id%TYPE := 176;
 BEGIN
 DELETE FROM employees
 WHERE employee_id = v_empno;
 v_rows_deleted := (SQL%ROWCOUNT || ' row deleted.');
 DBMS_OUTPUT.PUT_LINE (v_rows_deleted);
END;
/
DECLARE
 v_myage number:=31;
 BEGIN
 IF v_myage < 11 THEN
 DBMS_OUTPUT.PUT_LINE(' I am a child ');
 ELSIF v_myage < 20 THEN
 DBMS_OUTPUT.PUT_LINE(' I am young ');
 ELSIF v_myage < 30 THEN
 DBMS_OUTPUT.PUT_LINE(' I am in my twenties');
 ELSIF v_myage < 40 THEN
 DBMS_OUTPUT.PUT_LINE(' I am in my thirties');
 ELSE
 DBMS_OUTPUT.PUT_LINE(' I am always young ');
 END IF;
END;
/
DECLARE
 x number := 10;
 
BEGIN
 LOOP
 dbms_output.put_line(x);
 x := x + 10;
 exit WHEN x > 50;
 END LOOP;
 -- after exit, control resumes here
 dbms_output.put_line('After Exit x is: ' || x);
END;
/
DECLARE
 a number(2) := 10;
 
BEGIN
 WHILE a < 20 LOOP
 dbms_output.put_line('value of a: ' || a);
 a := a + 1;
 END LOOP;
END;
/
DECLARE
 X NUMBER :=1;
 Y NUMBER :=1;
 
BEGIN
 WHILE(X<=10) LOOP
 DBMS_OUTPUT.PUT_LINE(X);
 X :=X+1;
 Y :=Y*3;
 EXIT WHEN Y>8;
 END LOOP;
END;
/
DECLARE
 a number(2) := 10;
 
BEGIN
 WHILE a < 20 LOOP
 dbms_output.put_line('value of a: ' || a);
 a := a + 1;
 END LOOP;
END;
/
DECLARE
 X NUMBER :=1;
 Y NUMBER :=1;
 
BEGIN
 WHILE(X<=10) LOOP
 DBMS_OUTPUT.PUT_LINE(X);
 X :=X+1;
 Y :=Y*3;
 EXIT WHEN Y>8;
 END LOOP;
END;
/
DECLARE
 a number(2);
 
BEGIN
 FOR a IN REVERSE 10 .. 20 LOOP
 dbms_output.put_line('value of a: ' || a);
 END LOOP;
END;
/
BEGIN
 FOR X IN 2..10 LOOP
 DBMS_OUTPUT.PUT_LINE(X);
 EXIT WHEN MOD(X,3)=0;
 END LOOP;
END;
/
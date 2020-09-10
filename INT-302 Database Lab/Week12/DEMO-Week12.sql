DECLARE
 v_fname VARCHAR2(20);
BEGIN
 SELECT first_name
 INTO v_fname
 FROM employees 
 WHERE employee_id = 100;
 DBMS_OUTPUT.PUT_LINE(' The First Name of the Employee is ' || v_fname);
END;
/
DECLARE 
 a NUMBER := 10;
 b NUMBER := 20;
 c NUMBER;
 f NUMBER(5,2);
BEGIN
  c := a + b;
  DBMS_OUTPUT.PUT_LINE('Value of c: ' || c);
  f := 70.0/3.0;
  DBMS_OUTPUT.PUT_LINE('Value of f: ' || f);
END;
/
DECLARE 
 service_charge NUMBER(2) := &service_charge;
BEGIN 
 DBMS_OUTPUT.PUT_LINE('service_charge ' || service_charge || '%');
END;
/
DECLARE
 p_name VARCHAR2(15) := '&product';
 qty NUMBER(3) := &quantity;
 price NUMBER(5,2) := &price;
 total NUMBER(6,2);
BEGIN 
 total := qty*price;
 DBMS_OUTPUT.PUT_LINE('Product : ' || p_name);
 DBMS_OUTPUT.PUT_LINE('Quantity : ' || qty);
 DBMS_OUTPUT.PUT_LINE('Price : ' || price);
 DBMS_OUTPUT.PUT_LINE('Total : ' || total);
END;
/
DECLARE 
 h_date employees.hire_date%type;
 sal employees.salary%type;
BEGIN
 SELECT hire_date, salary
 INTO h_date, sal
 FROM employees
 WHERE employee_id = 100;
 DBMS_OUTPUT.PUT_LINE('Hire Date : ' || h_date);
 DBMS_OUTPUT.PUT_LINE('Salary : ' || TO_CHAR(sal, '99,999.99'));
END;
/
DECLARE 
 sum_sal employees.salary%type;
BEGIN 
 SELECT SUM(salary)
 INTO sum_sal
 FROM employees 
 WHERE department_id = 60;
 DBMS_OUTPUT.PUT_LINE('The sum of the salary is : ' || TO_CHAR(sum_sal, '99,999.99'));
END;
/
DECLARE
 M_FIRST_NAME employees.FIRST_NAME%TYPE;
 M_LAST_NAME employees.LAST_NAME%TYPE;
 M_SALARY employees.SALARY%TYPE;
BEGIN
 SELECT FIRST_NAME,LAST_NAME,SALARY INTO M_FIRST_NAME,
 M_LAST_NAME,M_SALARY
 FROM EMPLOYEES WHERE EMPLOYEE_ID = 205;
 DBMS_OUTPUT.PUT_LINE('NAME IS'||M_FIRST_NAME);
 DBMS_OUTPUT.PUT_LINE('LAST NAME IS ' ||M_LAST_NAME);
 DBMS_OUTPUT.PUT_LINE('SALARY IS ' ||M_SALARY);
END;
/
DECLARE
 M_FIRST_NAME employees.FIRST_NAME%TYPE;
 M_LAST_NAME employees.LAST_NAME%TYPE;
 M_SALARY employees.SALARY%TYPE;
BEGIN
 SELECT FIRST_NAME,LAST_NAME,SALARY INTO M_FIRST_NAME,
 M_LAST_NAME,M_SALARY
 FROM EMPLOYEES WHERE EMPLOYEE_ID = 999;
 DBMS_OUTPUT.PUT_LINE('NAME IS'||M_FIRST_NAME);
 DBMS_OUTPUT.PUT_LINE('LAST NAME IS ' ||M_LAST_NAME);
 DBMS_OUTPUT.PUT_LINE('SALARY IS ' ||M_SALARY);
EXCEPTION
 WHEN NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE('INVALID EMPLOYEE ID');
END;
/
DECLARE
 c_id customers.id%type := 8;
 c_name customers.name%type;
 c_addr customers.address%type;
BEGIN
 SELECT name, address INTO c_name, c_addr
 FROM customers WHERE id = c_id;
 DBMS_OUTPUT.PUT_LINE ('Name: '|| c_name);
 DBMS_OUTPUT.PUT_LINE ('Address: ' || c_addr);
EXCEPTION
 WHEN NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE('No Such Customer');
END;
/
DECLARE
 v_lname employees.last_name%TYPE;
 BEGIN
 SELECT last_name INTO v_lname
 FROM employees
 WHERE first_name='John';
 DBMS_OUTPUT.PUT_LINE ('John''s last name is :' ||v_lname);
EXCEPTION
 WHEN TOO_MANY_ROWS THEN
 DBMS_OUTPUT.PUT_LINE('Retieved multiple row');
END;
/
DECLARE
 v_num1 number := &sv_num1;
 v_num2 number := &sv_num2;
 v_result number;
BEGIN
 v_result := v_num1 / v_num2;
 DBMS_OUTPUT.PUT_LINE ('v_result: '|| v_result);
EXCEPTION
 WHEN ZERO_DIVIDE THEN
 DBMS_OUTPUT.PUT_LINE('A number cannot be divided by zero');
END;
/
DECLARE
 e_hiredate DATE := '&Start_Date';
 e_firstname employees.first_name%TYPE;
BEGIN
 DBMS_OUTPUT.PUT_LINE('Check the employee is start date');
 SELECT first_name INTO e_firstname
 FROM employees
 WHERE hire_date = e_hiredate;
 DBMS_OUTPUT.PUT_LINE('The employee is '||e_firstname);
 DBMS_OUTPUT.PUT_LINE('Employ on:'||e_hiredate);
EXCEPTION
 WHEN TOO_MANY_ROWS THEN
 DBMS_OUTPUT.PUT_LINE('The employee is employed into many person');
 WHEN NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE('The employee is not employed');
END;
/
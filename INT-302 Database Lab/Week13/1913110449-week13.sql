--1913110449 Karin
--1
DECLARE 
 co_id countries.country_id%TYPE;
 co_name countries.country_name%TYPE;
 
BEGIN
 SELECT country_id, country_name
 INTO co_id, co_name
 FROM countries
 WHERE country_id = 'JP';
 DBMS_OUTPUT.PUT_LINE('COUNTY ID : ' || co_id);
 DBMS_OUTPUT.PUT_LINE('COUNTY NAME : ' || co_name);
END;
/

--2
CREATE TABLE customer
(customer_id VARCHAR2(5) PRIMARY KEY,
 customer_name VARCHAR2(30) NOT NULL,
 income number(6) NOT NULL
);

--3
BEGIN 
 INSERT INTO customer
 VALUES ('C1001', 'Suttipong Ratjan', '25000');
 INSERT INTO customer
 VALUES ('C1002', 'Nisachon Chidchon', '50000');
 INSERT INTO customer
 VALUES ('C1003', 'Pawarit Puchay', '75000');
END;
/

--4
DECLARE
 c_id customer.customer_id%type;
 c_name customer.customer_name%type;
 ic customer.income%type;
 
BEGIN
 UPDATE customer
 SET customer_name = 'Chanon Sukmeang'
 WHERE customer_id = 'C1001';
 SELECT customer_id,customer_name,income
 INTO c_id,c_name,ic
 FROM customer
 WHERE customer_id = 'C1001';
 DBMS_OUTPUT.PUT_LINE ('CUSTOMER ID = '|| c_id);
 DBMS_OUTPUT.PUT_LINE ('NAME = '|| c_name);
 DBMS_OUTPUT.PUT_LINE ('INCOME = '|| ic);
END;
/

--5
BEGIN
 DELETE FROM customer
 WHERE customer_id = 'C1003';
 DBMS_OUTPUT.PUT_LINE ('Delete already...');
END;


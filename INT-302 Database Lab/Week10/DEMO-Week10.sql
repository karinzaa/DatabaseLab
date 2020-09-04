INSERT INTO departments
            (department_id,department_name,location_id)
VALUES (&department_id,'&department_name',&location_id);

SELECT *
FROM departments;

CREATE TABLE contacts
(id NUMBER(1) PRIMARY KEY,
 name VARCHAR2(15) NOT NULL,
 age NUMBER(2),
 address VARCHAR2(20),
 salary  NUMBER(7,2)
);
DESC contacts;
SELECT * FROM contacts;
INSERT INTO contacts
VALUES(1, 'Ramesh', 35, 'Ahmedabad', 2000.00 );
INSERT INTO contacts
VALUES(2, 'Khilan', 25, 'Delhi', 1500.00);
INSERT INTO contacts
VALUES(3, 'kaushik', 23, 'Kota', 2000.00);
INSERT INTO contacts
VALUES(4, 'Chaitali', 25, 'Mumbai', 6500.00);
INSERT INTO contacts
VALUES(5, 'Hardik', 27, 'Bhopal', 8500.00);
INSERT INTO contacts
VALUES(6, 'Komal', 22, 'MP', 4500.00);
INSERT INTO contacts
VALUES(7, 'Muffy', 24, 'Indore', 10000.00);

CREATE TABLE department
(dep_id NUMBER(4),
 dep_name VARCHAR2(30)
);
INSERT INTO department
SELECT department_id, department_name
FROM departments
WHERE manager_id IS NOT NULL;

SELECT * FROM department;

CREATE TABLE CONTACTS_BKP
    AS SELECT * FROM contacts;
SELECT * FROM contacts_bkp;

SELECT * FROM CONTACTS
WHERE id IN (SELECT id
             FROM contacts_bkp
             WHERE salary > 4500);
              
UPDATE employees
SET phone_number = (SELECT phone_number
                    FROM employees
                    WHERE employee_id = 205),
    salary = (SELECT salary
              FROM employees
              WHERE employee_id = 205)
WHERE employees_id = 113;

UPDATE contacts
SET salary = salary * 0.25
WHERE age IN (SELECT age
              FROM contacts_bkp
              WHERE age >= 27);
SELECT * FROM contacts;

DELETE FROM contacts
WHERE age IN (SELECT age
              FROM contacts_bkp
              WHERE age >= 27);
SELECT * FROM contacts;
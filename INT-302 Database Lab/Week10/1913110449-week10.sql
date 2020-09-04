--1913110449 Karin
--1
CREATE TABLE customer
(cust_id VARCHAR2(5) PRIMARY KEY,
 name VARCHAR2(25) NOT NULL,
 surnanr VARCHAR2(25),
 address VARCHAR2(30),
 province VARCHAR2(25)
);

CREATE TABLE product
(pro_id VARCHAR2(4) PRIMARY KEY,
 name VARCHAR2(15) NOT NULL,
 stock NUMBER(6) NOT NULL,
 unitPrice NUMBER(8, 2)NOT NULL
);

CREATE TABLE orders
(cust_id VARCHAR2(5) NOT NULL,
 pro_id VARCHAR2(4) NOT NULL,
 date_order DATE,
 num_order NUMBER(6) NOT NULL);

ALTER TABLE orders
ADD CONSTRAINT my_ord_cust_id_fk
FOREIGN KEY (cust_id) REFERENCES customer(cust_id);

ALTER TABLE orders
ADD CONSTRAINT my_ord_pro_id_fk
FOREIGN KEY (pro_id) REFERENCES product(pro_id);


INSERT INTO customer
VALUES ('C1001', 'Sireporn', 'Chojai', '111/3 Kannayao', 'Bangkok');

INSERT INTO customer
VALUES ('C1002', 'Chanon', 'Ratcharean', '77 M 8', 'Phitsanulok');

INSERT INTO customer
VALUES ('C1003', 'Rattaya', 'Tipjan', '677 Ratchapisek', 'Bangkok');

INSERT INTO customer
VALUES ('C1004', 'Sukchart', 'Onna', '90/344 M 1', 'Changmai');

INSERT INTO customer
VALUES ('C1005', 'Kittichay', 'Moona', '566', 'Changrai');

INSERT INTO product
VALUES ('P001', 'Paper A4', 2200, 80);

INSERT INTO product
VALUES ('P002', 'Pencil', 1000, 5);

INSERT INTO product
VALUES ('P003', 'Chair', 500, 150);

INSERT INTO product
VALUES ('P004', 'Drawing Table', 450, 240);

INSERT INTO product
VALUES ('P005', 'Ruler', 1500, 9);

--2
INSERT INTO orders
VALUES('&cust_id', '&pro_id', '&date_order', &num_order);

--3
UPDATE product
SET stock = stock + 100;

--4
CREATE TABLE product_new
AS SELECT pro_id, name, stock, unitprice new_price
   WHERE pro_id IN ('P002', 'P003', 'P004')
UPDATE product_new
SET new_price = new_price * 1.1;
   
--5
SELECT * FROM orders 
WHERE num_order IN (SELECT num_order
                    FROM orders
                    WHERE pro_id LIKE 'P004')
AND pro_id NOT LIKE 'P004';

--6
SELECT c.cust_id, name , date_order, num_order
FROM customer c JOIN orders o
ON c.cust_id = o.cust_id
WHERE c.cust_id in ('C1001', 'C1004', 'C1005')
ORDER BY 2 ASC;
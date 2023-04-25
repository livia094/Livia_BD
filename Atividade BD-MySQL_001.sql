show databases;
create database treino;
use treino;
SHOW TABLES;
CREATE TABLE EMPLOYEE (
  Fname VARCHAR(10) NOT NULL,
  Minit CHAR,
  Lname VARCHAR(20) NOT NULL,
  Ssn CHAR(9) NOT NULL,
  Bdate DATE,
  Address VARCHAR(30),
  Sex CHAR(1),
  Salary DECIMAL(5),
  Super_ssn CHAR(9),
  Dno INT NOT NULL,
  PRIMARY KEY (Ssn)
);
DESCRIBE EMPLOYEE;
SELECT * FROM EMPLOYEE;

CREATE TABLE DEPARTMENT
( Dname           VARCHAR(15)       NOT NULL,
  Dnumber         INT               NOT NULL,
  Mgr_ssn         CHAR(9)           NOT NULL,
  Mgr_start_date  DATE,
PRIMARY KEY (Dnumber),
UNIQUE      (Dname),
FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE(Ssn) );
describe DEPARTMENT;

CREATE TABLE DEPT_LOCATIONS
( Dnumber         INT               NOT NULL,
  Dlocation       VARCHAR(15)       NOT NULL,
PRIMARY KEY (Dnumber, Dlocation),
FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber) );

CREATE TABLE PROJECT
( Pname           VARCHAR(15)       NOT NULL,
  Pnumber         INT               NOT NULL,
  Plocation       VARCHAR(15),
  Dnum            INT               NOT NULL,
PRIMARY KEY (Pnumber),
UNIQUE      (Pname),
FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber) );

CREATE TABLE WORKS_ON
( Essn            CHAR(9)           NOT NULL,
  Pno             INT               NOT NULL,
  Hours           DECIMAL(3,1)      NOT NULL,
PRIMARY KEY (Essn, Pno),
FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn),
FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber) );

CREATE TABLE DEPENDENT
( Essn            CHAR(9)           NOT NULL,
  Dependent_name  VARCHAR(15)       NOT NULL,
  Sex             CHAR,
  Bdate           DATE,
  Relationship    VARCHAR(8),
PRIMARY KEY (Essn, Dependent_name),
FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn) );

-- Desativando a verificação de chaves estrangeiras temporariamente
SET FOREIGN_KEY_CHECKS=0;

-- Excluindo a referência na tabela DEPT_LOCATIONS
ALTER TABLE DEPT_LOCATIONS
DROP FOREIGN KEY dept_locations_ibfk_1;

-- Excluindo a tabela DEPARTMENT
DROP TABLE DEPARTMENT;

-- Reativando a verificação de chaves estrangeiras
SET FOREIGN_KEY_CHECKS=1;

DROP TABLE WORKS_ON;

ALTER TABLE EMPLOYEE
ADD Phone VARCHAR(15);

ALTER TABLE EMPLOYEE
CHANGE Dno DepartmentNumber INT NOT NULL;

show tables;

SHOW COLUMNS FROM EMPLOYEE;dependent
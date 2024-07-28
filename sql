scott    tiger

SELECT * FROM Customers;

DELETE FROM table_name WHERE condition;


CREATE TABLE  Table_Name 
2 (Column_Name1  Type1(Length) NULL | NOT NULL, 
3   Column_Name2 Type2(Length) NULL | NOT NULL,    …,  
4   Column_Namen  Typen(Length) NULL | NOT NULL);

DESCRIBE TABLE_NAME;


CREATE TABLE   Student  (St_No 
    NUMBER(2) Not Null, 
    FName CHAR(40) Not Null, 
    LName CHAR(40), 
    Dept_no NUMBER(3),	
    StartDate DATE
)
;


CREATE TABLE St_Inform (Temp_St_No,MName)
As
SELECT St_No, FName From Student;


ALTER TABLE  Student  DROP COLUMN Collage; 

DROP TABLE TABLE_NAME



> INSERT INTO Table_Name (Column_Name1, 
          Column_Name2, Column_NameN) 
          VALUES 
          (Value1, ValueN);

////////           UNIQUE  -   PRIMARY KEY - NOT NULL -   NULL   -`  FOREIGN KEY 

CREATE TABLE emp(
  	       empno  NUMBER(4),
    	     ename  VARCHAR2(10),
  	       deptno  NUMBER(2) NOT NULL,
	         CONSTRAINT emp_empno_pk PRIMARY KEY (EMPNO));






SQL> CREATE TABLE emp(
    	empno 	NUMBER(4),
  	  ename	VARCHAR2(10) NOT NULL,
  	  job	VARCHAR2(9),
	    mgr	NUMBER(4),
  	  hiredate	DATE,
  	  sal	NUMBER(7,2),
   	  comm	NUMBER(7,2),
  	  deptno	NUMBER(7,2) NOT NULL,
 	    CONSTRAINT emp_deptno_fk FOREIGN KEY (deptno) REFERENCES dept (deptno));


----------------------------------------------------------
Adding a Constraint

ALTER TABLE     emp
      ADD CONSTRAINT  emp_mgr_fk 
   		FOREIGN KEY(mgr) REFERENCES emp(empno);

---------------------------------------------------------
Dropping a Constraint

ALTER TABLE	  emp
    DROP CONSTRAINT  emp_mgr_fk;


-----------------------------------------------------------
Enabling & Disabling Constraints

ALTER TABLE		emp
    DISABLE CONSTRAINT	emp_empno_pk CASCADE;

ALTER TABLE		emp
    ENABLE CONSTRAINT	emp_empno_pk;


--------------------------------------------------------
Viewing Constraints

SELECT	constraint_name, column_name
    FROM	user_cons_columns
    WHERE	table_name = 'EMP';

--------------------------------------------------------------------
Viewing the Columns Associated with Constraints

SELECT	constraint_name, column_name
    FROM	user_cons_columns
    WHERE	table_name = 'EMP';

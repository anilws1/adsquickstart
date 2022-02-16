--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      JLLDemo.DM1
--
-- Date Created : Thursday, December 09, 2021 09:20:33
-- Target DBMS : Snowflake
--

-- 
-- TABLE: Dept 
--

CREATE TABLE Dept(
    DeptID    CHAR(10)    NOT NULL,
    Dname     CHAR(10),
    Loc       CHAR(10),
    CONSTRAINT PK1 PRIMARY KEY (DeptID)
)
;



-- 
-- TABLE: Emp 
--

CREATE TABLE Emp(
    Empno     CHAR(10)    NOT NULL,
    DeptID    CHAR(10)    NOT NULL,
    Ename     CHAR(10),
    Add       CHAR(10),
    CONSTRAINT PK2 PRIMARY KEY (Empno, DeptID)
)
;



-- 
-- TABLE: Emp 
--

ALTER TABLE Emp ADD CONSTRAINT RefDept11 
    FOREIGN KEY (DeptID)
    REFERENCES Dept(DeptID)
;



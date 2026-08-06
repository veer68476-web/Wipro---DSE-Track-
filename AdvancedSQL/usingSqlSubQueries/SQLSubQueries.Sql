Assignment 1

Question:
Create a report that displays EMPNO, ENAME, DEPTNO of employees who work with that employee. (Nested Sub Query)
---------------------------------------------------------------------------------------------------------------
SQL> SELECT EMPNO, ENAME, DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO = (
  4      SELECT DEPTNO
  5      FROM EMP
  6      WHERE ENAME = 'SMITH'
  7  );
output:-
----------
EMPNO ENAME      DEPTNO
----- ---------- ------
7369  SMITH      20
7566  JONES      20
7788  SCOTT      20
7876  ADAMS      20
7902  FORD       20

5 rows selected.
----------------------------
ssignment 2
Question

Display the employees who earn more than the average salary of EMP table.
(Nested Sub Query)
------------------------------------------------
SQL> SELECT EMPNO, ENAME, JOB, SAL
  2  FROM EMP
  3  WHERE SAL >
  4  (SELECT AVG(SAL)
  5   FROM EMP);
-----------
output:-
-----------
EMPNO ENAME   JOB        SAL
----- ------- -------- ------
7566  JONES   MANAGER    2975
7698  BLAKE   MANAGER    2850
7782  CLARK   MANAGER    2450
7788  SCOTT   ANALYST    3000
7839  KING    PRESIDENT  5000
7902  FORD    ANALYST    3000

6 rows selected.
-----------------------------------------------------

Assignment 3
Question

Display the ENAME and JOB who are Managers.
(Use EXISTS Operator)
-------------------------------------------------
SQL> SELECT ENAME, JOB
  2  FROM EMP E
  3  WHERE EXISTS
  4  (SELECT 1
  5   FROM EMP
  6   WHERE EMPNO = E.EMPNO
  7   AND JOB='MANAGER');
output:-
---------------
ENAME   JOB
------- --------
JONES   MANAGER
BLAKE   MANAGER
CLARK   MANAGER

3 rows selected.

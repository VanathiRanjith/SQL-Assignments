SELECT * FROM EMPLOYEES;

SELECT EMPLOYEE_ID ,FIRST_NAME||' '||LAST_NAME AS FULL_NAME, SALARY , (12/100)*SALARY AS SALARY_BONUS FROM EMPLOYEES;



SELECT DISTINCT(E.EMPLOYEE_ID ),E.FIRST_NAME||' '||lAST_NAME,E.DEPARTMENT_ID, D.DEPARTMENT_NAME ,J.JOB_ID,L.CITY,C.COUNTRY_NAME,R.REGION_NAME, E.SALARY,E.COMMISSION_PCT,E.SALARY+(SALARY*COMMISSION_PCT) AS SALARY_COMMISION 

FROM  EMPLOYEES E 

JOIN DEPARTMENTS D 

ON E.DEPARTMENT_ID=D.DEPARTMENT_ID 

JOIN JOB_HISTORY J

ON J.DEPARTMENT_ID=D.DEPARTMENT_ID 

JOIN LOCATIONS L

ON D.LOCATION_ID=L.LOCATION_ID

JOIN COUNTRIES C

ON L.COUNTRY_ID=C.COUNTRY_ID

JOIN REGIONS R

ON C.REGION_ID=R.REGION_ID

WHERE SALARY+(SALARY*COMMISSION_PCT) IS NOT NULL AND E.EMPLOYEE_ID BETWEEN 100 AND 200

ORDER BY  E.EMPLOYEE_ID ;



SELECT D.DEPARTMENT_ID,SUM(E.SALARY),SUM(E.SALARY+(SALARY*COMMISSION_PCT)) AS SALARY_COMMISION 

FROM  EMPLOYEES E 

JOIN DEPARTMENTS D 

ON E.DEPARTMENT_ID=D.DEPARTMENT_ID 

--JOIN JOB_HISTORY J

--ON J.DEPARTMENT_ID=D.DEPARTMENT_ID 

--JOIN LOCATIONS L

--ON D.LOCATION_ID=L.LOCATION_ID

--JOIN COUNTRIES C

--ON L.COUNTRY_ID=C.COUNTRY_ID

--JOIN REGIONS R

--ON C.REGION_ID=R.REGION_ID

--WHERE SALARY+(SALARY*COMMISSION_PCT) IS NOT NULL AND E.EMPLOYEE_ID BETWEEN 100 AND 200
GROUP BY D.DEPARTMENT_ID
ORDER BY  D.DEPARTMENT_ID ;

SET VERIFY ON
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '&LETTER%r';




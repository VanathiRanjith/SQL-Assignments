DELETE FROM EMPLOYEE_ID WHERE EMP_ID IN(
SELECT MAX(EMP_ID) 

FROM EMPLOYEE_ID

GROUP BY EMP_NAME,EMP_BLOODGRP

HAVING COUNT(*) > 1 );

ALTER TABLE EMPLOYEE_ID DROP CONSTRAINT EMBG_UK_ADDED;
INSERT INTO EMPLOYEE_ID VALUES (6,'RAGAV','O+');

SELECT FIRST_NAME,LAST_NAME,COUNT(*) 

FROM EMPLOYEES

GROUP BY FIRST_NAME,LAST_NAME

HAVING COUNT(*) > 1 ;



SELECT ITEM_NUMBER ,COUNT(*) 

FROM WEBBING

GROUP BY ITEM_NUMBER

HAVING COUNT(*) > 1 ;

INSERT INTO WEBBING VALUES ('QURT/000043783','QURT/000043783','PO_000010623','70031','10_MM','BRT_COBALT','BLRM001','500.0','5-Jan'); ROLLBACK;

SELECT * 

FROM WEBBING

WHERE ITEM_NUMBER=70031


SELECT * FROM WEBBING WHERE ITEM_NUMBER NOT IN (
SELECT MIN(ITEM_NUMBER)

FROM WEBBING

GROUP BY ITEM_NUMBER)

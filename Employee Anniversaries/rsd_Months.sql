/*
Author:			
	Lynn Curtis
Report:			
	Anniversary Letters.rdl
Date:			
	Jan 2021
Purpose:		
	Populates Selection Dropdown Box
Design Tool:	
	SSRS/SSDT
DBMS:			
	SQL SERVER 2017, Developer Edition
DB:				
	AdventureWorks 2017
Retention:		
	KP PERM
*/

SELECT DISTINCT 
MONTH_ID, 
MONTH_NAME
FROM  v_Employee_StartDates
ORDER BY MONTH_ID;

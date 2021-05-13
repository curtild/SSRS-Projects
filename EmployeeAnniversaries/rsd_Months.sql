/*
Author:			
	Lynnetta Curtis
Report:			
	Anniversary Letters.rdl
Created:			
	Jan 2021
Purpose:		
	To populate a dropdown box displaying months of the year.
Design Tool:	
	SSRS/Visual Studio 2019 Community Edition
DBMS:			
	SQL SERVER 2017, Developer Edition
DB:				
	AdventureWorks 2017
Dependencies:
	v_EmployeeData.sql
Retention:		
	KP PERM
*/

SELECT DISTINCT 
MONTH_ID, 
MONTH_NAME
FROM  v_EmployeeData
ORDER BY MONTH_ID;

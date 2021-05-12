/*
Author:			
	Lynnetta Curtis
Report:			
	Anniversary Letters.rdl
Date:			
	Jan 2021
Purpose:		
	Pulls Employee Anniversary Letters by Month
Design Tool:	
	SSRS/SSDT
DBMS:			
	SQL SERVER 2017, Developer Edition
DB:				
	AdventureWorks 2017
Dependencies:
	v_Employee_Anniversary.sql	
Retention:		
	KP PERM
*/
SELECT 
BUSINESSENTITYID, 
TITLE, 
FIRSTNAME, 
MIDDLENAME, 
LASTNAME, 
SUFFIX, 
JOBTITLE, 
EMAILADDRESS, 
ADDRESSLINE1, 
ADDRESSLINE2, 
CITY, 
STATEPROVINCENAME, 
COUNTRYREGIONNAME, 
POSTALCODE, 
DEPARTMENT, 
STARTDATE, 
CURRENT_YEAR, 
ANNIVERSARY_YEAR
FROM v_Employee_StartDates
WHERE (MONTH(STARTDATE) = @MONTH);

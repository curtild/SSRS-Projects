/*
Author:			
	Lynnetta Curtis
Report:			
	Anniversary Letters.rdl
Created:			
	Jan 2021
Purpose:		
	To pull employee data for employment anniversaries.
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
FROM v_EmployeeData
WHERE (MONTH(STARTDATE) = @MONTH);

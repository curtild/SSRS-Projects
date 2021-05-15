/*
Author:			
	Lynnetta Curtis
Report:			
	AssetTag Barcode.rdl
Created:			
	Jan 2021
Purpose:		
	To create a view of employee data with related barcodes.
Design Tool:	
	SSRS/Visual Studio 2019 Community Edition
DBMS:			
	SQL SERVER 2017, Developer Edition
DB:				
	AdventureWorks 2017
Dependencies:
	(TABLE) dbo.Employee_Barcodes
Retention:		
	KP PERM
*/

IF OBJECT_ID(N'dbo.v_Employee_Barcodes', N'V') IS NOT NULL
	DROP VIEW dbo.v_Employee_Barcodes;
GO
CREATE VIEW v_Employee_Barcodes AS
(SELECT RECORD_NO, 
FIRSTNAME, 
MIDDLENAME, 
LASTNAME, 
EMPLOYEE, 
JOBTITLE, 
DEPARTMENT, 
PHONENUMBER, 
EMAILADDRESS, 
BARCODE_TEXT, 
BARCODE_IMAGE
FROM dbo.Employee_Barcodes)
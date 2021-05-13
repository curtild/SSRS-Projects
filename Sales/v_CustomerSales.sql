/*
Author:			
	Lynnetta Curtis
Report:			
	Sales.rdl
Created:			
	Apr 2021
Purpose:		
	To create a view of U.S. sales data. 
Design Tool:	
	SSRS/Visual Studio 2019 Community Edition
DBMS:			
	SQL SERVER 2017, Developer Edition
DB:				
	AdventureWorks 2017
Retention:		
	KP PERM
*/

USE [AdventureWorks2017]
GO
IF OBJECT_ID(N'v_CustomerSales', N'V') IS NOT NULL
	DROP VIEW v_CustomerSales
GO
CREATE VIEW v_CustomerSales 
AS
(SELECT 
SALESORDERID,
SALESORDERNUMBER, 
PURCHASEORDERNUMBER,
MONTH(ORDERDATE) AS MONTH,
YEAR(ORDERDATE) AS ORDER_YEAR,
OH.ORDERDATE,
OH.DUEDATE,
OH.MODIFIEDDATE,
OH.ACCOUNTNUMBER,
OH.CUSTOMERID,
SALESPERSONID,
PERSON.PERSONTYPE,
TOTALDUE,
CUSTOMER.PERSONID,
CUSTOMER.STOREID,
PERSON.BUSINESSENTITYID,
PERSON.TITLE,
PERSON.FIRSTNAME,
PERSON.MIDDLENAME,
PERSON.LASTNAME,
PERSON.SUFFIX,
ADDRESSES.ADDRESSLINE1,
ADDRESSES.ADDRESSLINE2,
ADDRESSES.CITY,
STATES.[NAME] AS STATE,
STATES.STATEPROVINCECODE,
ADDRESSES.POSTALCODE,
COUNTRIES.[NAME] AS COUNTRY
FROM SALES.SALESORDERHEADER AS OH
JOIN SALES.CUSTOMER AS CUSTOMER ON
OH.CUSTOMERID=CUSTOMER.CUSTOMERID
JOIN PERSON.PERSON AS PERSON ON
CUSTOMER.PERSONID=PERSON.BUSINESSENTITYID
JOIN PERSON.BUSINESSENTITYADDRESS AS BSNENTITY
ON BSNENTITY.BUSINESSENTITYID=PERSON.BUSINESSENTITYID
JOIN PERSON.ADDRESS AS ADDRESSES ON
ADDRESSES.ADDRESSID=BSNENTITY.ADDRESSID
JOIN PERSON.STATEPROVINCE AS STATES ON
ADDRESSES.STATEPROVINCEID=STATES.STATEPROVINCEID
JOIN PERSON.COUNTRYREGION AS COUNTRIES ON
COUNTRIES.COUNTRYREGIONCODE=STATES.COUNTRYREGIONCODE
WHERE PERSON.PERSONTYPE = 'IN' AND YEAR(ORDERDATE) = 2013 AND COUNTRIES.COUNTRYREGIONCODE = 'US'
ORDER BY SALESORDERNUMBER
OFFSET 0 ROWS)
GO
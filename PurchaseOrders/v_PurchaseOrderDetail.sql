/*
Author:			
	Lynnetta Curtis
Report:			
	PurchaseOrders.rdl
Created:			
	Mar 2021
Purpose:		
	To create a view of specific purchase order line items. 
Design Tool:	
	SSRS/Visual Studio 2019 Community Edition
DBMS:			
	SQL SERVER 2017, Developer Edition
DB:				
	AdventureWorks 2017
Dependencies:
	(TABLE) dbo_MyBarcodes
Retention:		
	KP PERM
*/
IF OBJECT_ID(N'dbo.v_PurchaseOrderDetail',N'V') IS NOT NULL
	DROP VIEW dbo.v_PurchaseOrderDetail;
GO
CREATE VIEW v_PurchaseOrderDetail 
AS
(SELECT 
RIGHT('0000'+ CONVERT(VARCHAR,OH.PURCHASEORDERID),4) AS PURCHASEORDER_ID,
CONVERT(DATE,OH.ORDERDATE,1) AS PO_ORDERDATE,
OH.REVISIONNUMBER,
CONVERT(DATE,OH.MODIFIEDDATE,1) AS PO_MODIFIEDDATE,
OH.[STATUS] AS PO_STATUS,
OH.VENDORID AS VENDOR_ID,
VENDOR.[NAME] AS VENDOR_NAME,
VENDOR.ACCOUNTNUMBER,
VENDOR_ADDRESS.ADDRESSLINE1 AS VENDOR_ADDRESSLINE1,
VENDOR_ADDRESS.ADDRESSLINE2 AS VENDOR_ADDRESSLINE2,
VENDOR_ADDRESS.CITY AS VENDOR_CITY,
VENDOR_ADDRESS.STATEPROVINCENAME AS VENDOR_STATEPROVINCENAME,
VENDOR_ADDRESS.POSTALCODE AS VENDOR_POSTALCODE,
VENDOR_ADDRESS.COUNTRYREGIONNAME AS VENDOR_COUNTRYREGIONNAME,
VENDOR.PREFERREDVENDORSTATUS AS VENDOR_STATUS,
VENDOR.PURCHASINGWEBSERVICEURL AS VENDOR_PURCHASING_URL,
OH.EMPLOYEEID AS BUYER_ID,
EMPLOYEE.TITLE,
EMPLOYEE.FIRSTNAME,
EMPLOYEE.MIDDLENAME,
EMPLOYEE.LASTNAME,
EMPLOYEE.DEPARTMENT,
'AdventureWorks' AS COMPANY,
EMPLOYEE.JOBTITLE,
EMPLOYEE.ADDRESSLINE1 AS EMPLOYEE_ADDRESSLINE1,
EMPLOYEE.ADDRESSLINE2 AS EMPLOYEE_ADDRESSLINE2,
EMPLOYEE.CITY AS EMPLOYEE_CITY,
EMPLOYEE.STATEPROVINCENAME AS EMPLOYEE_STATEPROVINCENAME,
EMPLOYEE.POSTALCODE AS EMPLOYEE_POSTALCODE,
EMPLOYEE.COUNTRYREGIONNAME AS EMPLOYEE_COUNTRYREGIONNAME,
OH.SHIPMETHODID AS SHIPPING_METHOD_ID,
SHIPPING.[NAME] AS SHIPPING_METHOD,
OD.PURCHASEORDERDETAILID AS PURCHASEORDER_DETAIL_ID,
OD.PRODUCTID AS PRODUCT_ID,
PROD.[NAME] AS PRODUCT_NAME,
PROD.PRODUCTNUMBER AS PRODUCT_NUMBER,
PROD.SIZE AS PRODUCT_SIZE,
PROD.COLOR,
PROD.MAKEFLAG,
CONVERT(DATE,OD.DUEDATE,1) AS ITEM_DUEDATE,
CONVERT(DATE,OD.MODIFIEDDATE,1) AS ITEM_MODIFIEDDATE,
OD.UNITPRICE,
OD.ORDERQTY,
OD.LINETOTAL,
OH.SUBTOTAL,
OH.TAXAMT,
OH.FREIGHT,
OH.TOTALDUE,
CONVERT(DATE,OH.SHIPDATE,1) AS PO_SHIPDATE,
OD.RECEIVEDQTY,
OD.REJECTEDQTY,
OD.STOCKEDQTY,
BARCODE_IMAGE
FROM PURCHASING.PURCHASEORDERHEADER AS OH
JOIN PURCHASING.PURCHASEORDERDETAIL AS OD ON
	OH.PURCHASEORDERID=OD.PURCHASEORDERID
JOIN PRODUCTION.PRODUCT AS PROD ON
	OD.PRODUCTID=PROD.PRODUCTID
JOIN PURCHASING.VENDOR AS VENDOR ON
	OH.VENDORID = VENDOR.BUSINESSENTITYID
JOIN PURCHASING.VVENDORWITHADDRESSES AS VENDOR_ADDRESS ON
	OH.VENDORID = VENDOR_ADDRESS.BusinessEntityID
JOIN V_EMPLOYEEDATA AS EMPLOYEE ON
	EMPLOYEE.BUSINESSENTITYID = OH.EMPLOYEEID
JOIN PURCHASING.SHIPMETHOD AS SHIPPING ON
	SHIPPING.SHIPMETHODID = OH.SHIPMETHODID
JOIN MYBARCODES AS BARCODE ON
	BARCODE.IMAGE_CODE=OH.PURCHASEORDERID
WHERE OH.PURCHASEORDERID IN ('637','925')
ORDER BY OH.PURCHASEORDERID, OH.ORDERDATE, OD.PURCHASEORDERDETAILID
OFFSET 0 ROWS)

SELECT 
PURCHASEORDER_ID, 
PO_ORDERDATE, 
REVISIONNUMBER, 
PO_MODIFIEDDATE, 
PO_STATUS, 
VENDOR_ID, 
VENDOR_NAME, 
ACCOUNTNUMBER, 
VENDOR_ADDRESSLINE1, 
VENDOR_ADDRESSLINE2, 
VENDOR_CITY, 
VENDOR_STATEPROVINCENAME, 
VENDOR_POSTALCODE, 
VENDOR_COUNTRYREGIONNAME, 
VENDOR_STATUS, 
VENDOR_PURCHASING_URL, 
BUYER_ID, 
TITLE, 
FIRSTNAME, 
MIDDLENAME, 
LASTNAME, 
DEPARTMENT, 
JOBTITLE, 
COMPANY, 
EMPLOYEE_ADDRESSLINE1, 
EMPLOYEE_ADDRESSLINE2, 
EMPLOYEE_CITY, 
EMPLOYEE_STATEPROVINCENAME, 
EMPLOYEE_POSTALCODE, 
EMPLOYEE_COUNTRYREGIONNAME, 
SHIPPING_METHOD_ID, 
SHIPPING_METHOD, 
PURCHASEORDER_DETAIL_ID, 
PRODUCT_ID, 
PRODUCT_NAME, 
PRODUCT_NUMBER, 
PRODUCT_SIZE, 
COLOR, 
ITEM_DUEDATE, 
ITEM_MODIFIEDDATE, 
UNITPRICE, 
ORDERQTY, 
LINETOTAL, 
SUBTOTAL, 
TAXAMT, 
FREIGHT, 
TOTALDUE, 
PO_SHIPDATE, 
BARCODE_IMAGE
FROM v_PurchaseOrderDetail
WHERE(PURCHASEORDER_ID IN ('0637', '0925'))
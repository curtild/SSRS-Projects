USE AdventureWorks2017
GO
IF OBJECT_ID('v_StoresByCity') IS NOT NULL
	DROP View v_StoresByCity
GO
CREATE VIEW v_StoresByCity
AS
SELECT DISTINCT 
Store.BusinessEntityID AS Store_ID, 
Store.[Name] AS StoreName, 
Address_1.AddressLine1, 
Address_1.AddressLine2, 
Address_1.City, 
States.StateProvinceCode, 
States.[Name] AS StateName,
Address_1.PostalCode, 
States.CountryRegionCode, 
Countries.[Name] AS CountryName,
Territory.[Name] AS Territory,
Salesperson.BusinessEntityID AS Salesperson_ID,
Person.Person.LastName AS SPLastName,
Person.Person.FirstName AS SPFirstName,
Person.Person.MiddleName As SPMiddleName,
Concat_WS(' ', Person.Person.Title, 
Person.Person.FirstName, Person.Person.MiddleName, Person.Person.LastName,
Person.Person.Suffix) AS Salesperson, 
SPContactInfo.JobTitle,
SPContactInfo.AddressLine1 AS SalesRepAddr1,
SPContactInfo.AddressLine2 AS SalesRepAddr2,
SPContactInfo.City AS SalesRepCity,
SPContactInfo.StateProvinceName AS SalesRepState,
SPContactInfo.PostalCode AS SalesRepPostalCode,
SPContactInfo.CountryRegionName AS SalesRepCountry,
Person.EmailAddress.EmailAddress AS SalesRepEmail, 
Phone.PhoneNumber, SPContactInfo.PhoneNumberType
FROM  Sales.Store AS Store 
INNER JOIN Sales.Customer AS SC 
ON SC.StoreID = Store.BusinessEntityID
INNER JOIN Sales.SalesPerson AS Salesperson 
ON Salesperson.BusinessEntityID = Store.SalesPersonID 
INNER JOIN Sales.vSalesPerson AS SPContactInfo
ON Salesperson.BusinessEntityID=SPContactInfo.BusinessEntityID
INNER JOIN  Sales.SalesTerritory AS Territory 
ON Salesperson.TerritoryID = Territory.TerritoryID 
INNER JOIN Person.Person
ON Person.Person.BusinessEntityID = Salesperson.BusinessEntityID
INNER JOIN Person.EmailAddress ON
Person.Person.BusinessEntityID=Person.EmailAddress.BusinessEntityID
INNER JOIN Person.PersonPhone AS Phone 
ON Phone.BusinessEntityID = Salesperson.BusinessEntityID 
INNER JOIN Person.BusinessEntityAddress AS Store_Address 
ON STORE.BusinessEntityID = Store_Address.BusinessEntityID 
INNER JOIN Person.[Address] AS Address_1 
ON Address_1.AddressID = Store_Address.AddressID 
INNER JOIN Person.StateProvince AS States
ON Address_1.StateProvinceID = States.StateProvinceID 
INNER JOIN Person.CountryRegion AS Countries
ON Countries.CountryRegionCode = States.CountryRegionCode





SELECT
Store_ID,
StoreName,
AddressLine1,
AddressLine2,
City,
StateProvinceCode,
StateName,
PostalCode,
CountryRegionCode,
CountryName,
Territory,
Salesperson_ID,
SPLastName,
SPFirstName,
SPMiddleName,
Salesperson,
SalesRepAddr1,
SalesRepAddr2,
SalesRepCity,
SalesRepState,
SalesRepPostalCode,
SalesRepEmail,
PhoneNumber,
PhoneNumberType
FROM
v_StoresByCity
WHERE (City = @City) AND (StateProvinceCode = @StateProvinceCode)
ORDER BY Salesperson_ID, CountryName, StateName, City, StoreName
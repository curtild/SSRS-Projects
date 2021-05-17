SELECT DISTINCT 
StateProvinceCode AS State_Code,
StateName
FROM v_StoresByCity
WHERE CountryRegionCode=@CountryCode
GROUP BY CountryName, CountryRegionCode, StateProvinceCode,
StateName, City
HAVING Count(*)>=10;
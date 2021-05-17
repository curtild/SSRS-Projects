SELECT DISTINCT 
CountryRegionCode as Country_ID,
CountryName AS Country
FROM v_StoresByCity
GROUP BY CountryRegionCode, CountryName, StateName, City
HAVING Count(*)>=10;
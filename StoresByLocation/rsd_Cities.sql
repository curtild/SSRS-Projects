SELECT DISTINCT City, StateProvinceCode
FROM v_StoresByCity
WHERE StateProvinceCode=@StateProvinceCode
GROUP BY StateProvinceCode, City
HAVING Count(*)>=10;
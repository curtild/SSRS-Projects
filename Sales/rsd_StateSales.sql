SELECT COUNTRY, STATE, 
SUM(TOTALDUE) AS TOTAL_SALES
FROM  v_CustomerSales
GROUP BY COUNTRY, STATE
HAVING (COUNTRY = 'UNITED STATES')
ORDER BY TOTAL_SALES DESC
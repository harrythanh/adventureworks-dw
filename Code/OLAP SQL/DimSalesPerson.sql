CREATE OR REPLACE TABLE OLAP_demo.DimSalesPerson AS
SELECT
  BusinessEntityID,
  TerritoryID,
  SalesQuota,
  Bonus,
  CommissionPct,
  SalesYTD,
  SalesLastYear
FROM 
  OLTP.SalesPerson;
CREATE OR REPLACE TABLE OLAP_demo.DimTerritory AS
SELECT
  TerritoryID,
  Name,
  CountryRegionCode,
  `Group` AS TerritoryGroup,  -- Assign a name to the fourth column
  SalesYTD,
  SalesLastYear,
  CostYTD,
  CostLastYear
FROM 
  OLTP.SalesTerritory;
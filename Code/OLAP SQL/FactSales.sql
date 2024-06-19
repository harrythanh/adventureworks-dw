CREATE OR REPLACE TABLE OLAP_demo.FactSales AS
SELECT
  ROW_NUMBER() OVER() AS FactTableID,
  soh.SalesOrderID,
  sod.SalesOrderDetailID,
  soh.CustomerID,
  soh.SalesPersonID,
  soh.TerritoryID,
  sr.SalesReasonID,
  soh.CreditCardID,
  FORMAT_DATE('%Y%m%d', DATE(soh.OrderDate)) AS DateKey,
  sod.OrderQty,
  sod.LineTotal,
  soh.SubTotal,
  soh.TaxAmt,
  soh.Freight,
  soh.TotalDue
FROM 
  OLTP.SalesOrderHeader AS soh
JOIN 
  OLTP.SalesOrderDetail AS sod
ON 
  soh.SalesOrderID = sod.SalesOrderID
LEFT JOIN 
  OLTP.SalesReason AS sr
ON
  sr.SalesReasonID = sr.SalesReasonID;
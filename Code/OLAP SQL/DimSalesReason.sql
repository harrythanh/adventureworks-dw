CREATE OR REPLACE TABLE OLAP_demo.DimSalesReason AS
SELECT
  SalesReasonID,
  Name,
  ReasonType
FROM 
  OLTP.SalesReason;
CREATE OR REPLACE TABLE OLAP_demo.DimCustomer AS
SELECT
  CustomerID,
  PersonID,
  StoreID,
  AccountNumber
FROM 
  OLTP.Customer;
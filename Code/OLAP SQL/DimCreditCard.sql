CREATE OR REPLACE TABLE OLAP_demo.DimCreditCard AS
SELECT
  CreditCardID,
  CardType,
  CardNumber1
FROM 
  OLTP.CreditCard;
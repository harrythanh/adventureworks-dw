-- Standalone query
SELECT
  PARSE_DATETIME('%Y-%m-%d %H:%M:%E*S', '2011-05-31 00:00:00.000') AS parsed_datetime;

-- Table creation query
CREATE OR REPLACE TABLE OLAP_demo.DimDate AS
SELECT
  DISTINCT FORMAT_DATE('%Y%m%d', PARSE_DATETIME('%Y-%m-%d %H:%M:%E*S', OrderDate)) AS DateKey,
  CAST(PARSE_DATETIME('%Y-%m-%d %H:%M:%E*S', OrderDate) AS DATE) AS Date,
  EXTRACT(DAY FROM PARSE_DATETIME('%Y-%m-%d %H:%M:%E*S', OrderDate)) AS Day,
  EXTRACT(MONTH FROM PARSE_DATETIME('%Y-%m-%d %H:%M:%E*S', OrderDate)) AS Month,
  EXTRACT(QUARTER FROM PARSE_DATETIME('%Y-%m-%d %H:%M:%E*S', OrderDate)) AS Quarter,
  EXTRACT(YEAR FROM PARSE_DATETIME('%Y-%m-%d %H:%M:%E*S', OrderDate)) AS Year
FROM 
  OLTP.SalesOrderHeader;

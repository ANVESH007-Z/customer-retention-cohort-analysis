-- =====================================================
-- Query 1: Data Cleaning & Create Main Table
-- Project: Customer Cohort Analysis
-- Description:
-- Removes null Customer IDs, invalid Quantity/UnitPrice,
-- and duplicate transactions before analysis.
-- =====================================================



WITH online_retail AS
(
    SELECT
        invoiceno,
        stockcode,
        description,
        quantity,
        invoicedate,
        unitprice,
        customerid,
        country
    FROM datas
    WHERE customerid IS NOT NULL
),

quantity_unit_price AS
(
    -- Keep only valid sales transactions
    SELECT *
    FROM online_retail
    WHERE quantity > 0
      AND unitprice > 0
),

dup_check AS
(
    -- Identify duplicate transactions
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY invoiceno, stockcode, quantity
               ORDER BY invoicedate
           ) AS dup_flag
    FROM quantity_unit_price
)

-- Keep only unique records
SELECT *
FROM dup_check
WHERE dup_flag = 1;

-- Preview cleaned data
SELECT *
FROM online_retail_main;

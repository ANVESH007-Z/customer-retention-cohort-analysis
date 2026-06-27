-- ============================================
-- Query 2: Create Cohort Date
-- Finds each customer's first purchase date
-- and assigns them to a cohort month.
-- ============================================

SELECT
    customerid,
    MIN(invoicedate) AS first_purchase_date,
    DATE_TRUNC('month', MIN(invoicedate))::DATE AS cohort_date
FROM online_retail_main
GROUP BY customerid;

-- ============================================
-- Query 3: Create Cohort Index
-- Calculates the number of months between
-- the cohort month and each purchase.
-- ============================================

SELECT
    mmm.*,
    year_diff * 12 + month_diff + 1 AS cohort_index
FROM
(
    SELECT
        mm.*,
        invoice_year - cohort_year AS year_diff,
        invoice_month - cohort_month AS month_diff
    FROM
    (
        SELECT
            m.*,
            c.cohort_date,
            EXTRACT(YEAR FROM m.invoicedate) AS invoice_year,
            EXTRACT(MONTH FROM m.invoicedate) AS invoice_month,
            EXTRACT(YEAR FROM c.cohort_date) AS cohort_year,
            EXTRACT(MONTH FROM c.cohort_date) AS cohort_month
        FROM online_retail_main m
        LEFT JOIN cohort_date c
            ON m.customerid = c.customerid
    ) AS mm
) AS mmm;

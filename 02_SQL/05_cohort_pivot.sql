-- ============================================
-- Query 5: Cohort Pivot Table
-- Creates the cohort matrix by counting
-- unique customers retained in each month.
-- ============================================

SELECT
    cohort_date,
    COUNT(CASE WHEN cohort_index = 1 THEN customerid END) AS month_1,
    COUNT(CASE WHEN cohort_index = 2 THEN customerid END) AS month_2,
    COUNT(CASE WHEN cohort_index = 3 THEN customerid END) AS month_3,
    COUNT(CASE WHEN cohort_index = 4 THEN customerid END) AS month_4,
    COUNT(CASE WHEN cohort_index = 5 THEN customerid END) AS month_5,
    COUNT(CASE WHEN cohort_index = 6 THEN customerid END) AS month_6,
    COUNT(CASE WHEN cohort_index = 7 THEN customerid END) AS month_7,
    COUNT(CASE WHEN cohort_index = 8 THEN customerid END) AS month_8,
    COUNT(CASE WHEN cohort_index = 9 THEN customerid END) AS month_9,
    COUNT(CASE WHEN cohort_index = 10 THEN customerid END) AS month_10,
    COUNT(CASE WHEN cohort_index = 11 THEN customerid END) AS month_11,
    COUNT(CASE WHEN cohort_index = 12 THEN customerid END) AS month_12,
    COUNT(CASE WHEN cohort_index = 13 THEN customerid END) AS month_13
FROM
(
    SELECT DISTINCT
        customerid,
        cohort_date,
        cohort_index
    FROM cohort_retention
) AS tbl
GROUP BY cohort_date
ORDER BY cohort_date;

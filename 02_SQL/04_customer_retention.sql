-- ============================================
-- Query 4: Customer Retention
-- Calculates the number of unique customers
-- retained for each cohort and cohort index.
-- ============================================

SELECT
    cohort_date,
    cohort_index,
    COUNT(DISTINCT customerid) AS customer_count
FROM cohort_retention
GROUP BY
    cohort_date,
    cohort_index
ORDER BY
    cohort_date,
    cohort_index;

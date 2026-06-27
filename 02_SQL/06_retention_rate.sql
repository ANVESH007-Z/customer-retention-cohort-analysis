-- ============================================
-- Query 6: Retention Rate
-- Calculates the customer retention percentage
-- for each cohort relative to Month 1.
-- ============================================

SELECT
    cohort_date,
    ROUND(month_1 * 100.0 / month_1, 2) AS retention_month_1,
    ROUND(month_2 * 100.0 / month_1, 2) AS retention_month_2,
    ROUND(month_3 * 100.0 / month_1, 2) AS retention_month_3,
    ROUND(month_4 * 100.0 / month_1, 2) AS retention_month_4,
    ROUND(month_5 * 100.0 / month_1, 2) AS retention_month_5,
    ROUND(month_6 * 100.0 / month_1, 2) AS retention_month_6,
    ROUND(month_7 * 100.0 / month_1, 2) AS retention_month_7,
    ROUND(month_8 * 100.0 / month_1, 2) AS retention_month_8,
    ROUND(month_9 * 100.0 / month_1, 2) AS retention_month_9,
    ROUND(month_10 * 100.0 / month_1, 2) AS retention_month_10,
    ROUND(month_11 * 100.0 / month_1, 2) AS retention_month_11,
    ROUND(month_12 * 100.0 / month_1, 2) AS retention_month_12,
    ROUND(month_13 * 100.0 / month_1, 2) AS retention_month_13
FROM cohort_pivot
ORDER BY cohort_date;

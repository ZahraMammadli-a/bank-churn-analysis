-- Churn Analysis Queries

-- 1. Churn by age group
SELECT
    CASE
        WHEN age < 30 THEN '18-29'
        WHEN age < 40 THEN '30-39'
        WHEN age < 50 THEN '40-49'
        ELSE '50+'
    END AS age_group,
    COUNT(*) AS total,
    SUM(exited) AS churned,
    ROUND(SUM(exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY age_group
ORDER BY churn_rate DESC;

-- 2. Churn by number of products
SELECT
    num_of_products,
    COUNT(*) AS total,
    SUM(exited) AS churned,
    ROUND(SUM(exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY num_of_products
ORDER BY num_of_products;

-- 3. High-risk profile churn rate (90.48%!)
SELECT
    COUNT(*) AS total_risky,
    SUM(exited) AS churned,
    ROUND(SUM(exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers
WHERE age >= 50
  AND is_active_member = 0
  AND geography = 'Germany'
  AND num_of_products IN (1, 3, 4);




-- Basic Analysis Queries

-- 1. Total customer count
SELECT COUNT(*) AS total_customers FROM customers;

-- 2. Churn rate overview
SELECT
    exited,
    COUNT(*) AS say,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS faiz
FROM customers
GROUP BY exited;

-- 3. Churn by country
SELECT
    geography,
    COUNT(*) AS total,
    SUM(exited) AS churned,
    ROUND(SUM(exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY geography
ORDER BY churn_rate DESC;

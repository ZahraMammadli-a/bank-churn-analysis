-- Export Query for Excel Pivot Table

SELECT
    geography,
    gender,
    CASE
        WHEN age < 30 THEN '18-29'
        WHEN age < 40 THEN '30-39'
        WHEN age < 50 THEN '40-49'
        ELSE '50+'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(exited) AS churned,
    ROUND(SUM(exited) * 100.0 / COUNT(*), 2) AS churn_rate,
    ROUND(AVG(balance), 2) AS avg_balance,
    ROUND(AVG(credit_score), 2) AS avg_credit_score
FROM customers
GROUP BY geography, gender, age_group
ORDER BY geography, gender, age_group;99999999

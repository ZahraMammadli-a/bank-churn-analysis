-- Window Functions Examples

-- 1. ROW_NUMBER - Rank customers by balance
SELECT
    customer_id,
    surname,
    geography,
    balance,
    ROW_NUMBER() OVER(PARTITION BY geography ORDER BY balance DESC) AS rank
FROM customers
WHERE balance > 0
LIMIT 20;

-- 2. Top 3 customers by balance in each country
SELECT * FROM (
    SELECT
        customer_id,
        surname,
        geography,
        balance,
        RANK() OVER(PARTITION BY geography ORDER BY balance DESC) AS rank
    FROM customers
    WHERE balance > 0
) ranked
WHERE rank <= 3;

-- 3. Running total of balance
SELECT
    customer_id,
    geography,
    balance,
    SUM(balance) OVER(PARTITION BY geography ORDER BY balance DESC) AS running_total
FROM customers
WHERE balance > 0
LIMIT 15;

-- 4. LAG - Compare with previous row
SELECT
    customer_id,
    geography,
    balance,
    LAG(balance) OVER(PARTITION BY geography ORDER BY balance DESC) AS prev_balance
FROM customers
WHERE balance > 0
LIMIT 10;


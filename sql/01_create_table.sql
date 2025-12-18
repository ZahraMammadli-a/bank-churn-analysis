-- Bank Customer Churn Analysis
-- Table Creation Script

CREATE TABLE customers (
    row_number INTEGER,
    customer_id INTEGER PRIMARY KEY,
    surname VARCHAR(50),
    credit_score INTEGER,
    geography VARCHAR(50),
    gender VARCHAR(10),
    age INTEGER,
    tenure INTEGER,
    balance NUMERIC(15,2),
    num_of_products INTEGER,
    has_cr_card INTEGER,
    is_active_member INTEGER,
    estimated_salary NUMERIC(15,2),
    exited INTEGER
);

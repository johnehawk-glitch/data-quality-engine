-- Rule: Check for null customer_name values
-- Purpose: Ensure that the customer_name column does not contain any null values

Select
    COUNT(*) AS null_customer_name_count
FROM customers
WHERE customer_name IS NULL;
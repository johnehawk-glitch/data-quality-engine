-- Rule: Check for duplicate customer_email values
-- Purpose: Ensure that the customer_email column does not contain any duplicate values

Select
    COUNT(*) AS duplicate_customer_email_count
FROM (
    SELECT customer_email
    FROM customers
    GROUP BY customer_email
    HAVING COUNT(*) > 1
) AS duplicates;
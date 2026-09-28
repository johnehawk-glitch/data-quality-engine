-- Rule: Check for null order_date values
-- Purpose: Ensure that the order_date column does not contain any null values

Select
    COUNT(*) AS null_order_date_count
FROM orders
WHERE order_date IS NULL;

-- SELECT * FROM sales
-- WHERE is_disputed IS false
-- ORDER BY volume DESC, customer_name
-- LIMIT 3;

SELECT * FROM sales
ORDER BY volume DESC
LIMIT 5
OFFSET 3;
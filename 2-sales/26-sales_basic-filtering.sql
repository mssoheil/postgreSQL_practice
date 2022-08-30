-- SELECT * FROM sales
-- WHERE volume > 1000;

-- SELECT * FROM sales
-- WHERE is_recurring IS true;

SELECT * FROM sales
WHERE (is_disputed IS true) AND (volume > 5000);
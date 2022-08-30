-- ALTER TABLE sales
-- RENAME date_fullfilled TO date_fulfilled;

UPDATE sales
SET 
    product_name = 'A Truck', 
    volume = volume * 1000
WHERE id = 12;
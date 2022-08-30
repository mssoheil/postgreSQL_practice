-- CREATE DATABASE online_shop;
-- CREATE TABLE products (
--     product_name VARCHAR(200),
--     price NUMERIC,
--     "description" TEXT,
--     amount_in_stock NUMERIC,
--     "image" TEXT
-- );

-- INSERT INTO products (product_name, price, description, amount_in_stock, image)
-- VALUES ('macbook pro', 1500, 'A silver macbook pro laptop', 3, 'http://imgr.com/2');

-- INSERT INTO products(product_name, price, description, amount_in_stock, image)
-- VALUES ('iphone 12', 1100, 'A gray iphone 12 phone', 5, 'http://imgr.com/5');


-- INSERT INTO products(product_name, price, description, amount_in_stock, image)
-- VALUES ('Hunger games book', 204, 'The hunger game novel book', 5, 'http://imgr.com/8');


-- ALTER TABLE products
-- ALTER COLUMN product_name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER amount_in_stock SET NOT NULL,
-- ALTER "image" SET NOT NULL,
-- ADD CONSTRAINT positive_amount
-- CHECK(price > 0);


-- UPDATE products
-- SET price = 1600
-- WHERE product_name = 'macbook pro';

-- SELECT * from products;

-- ALTER TABLE products
-- ALTER COLUMN price SET DATA TYPE NUMERIC(10,2);

ALTER TABLE products
ALTER COLUMN amount_in_stock SET DATA TYPE SMALLINT;

-- ALTER TABLE products
-- ADD COLUMN id SERIAL PRIMARY KEY;


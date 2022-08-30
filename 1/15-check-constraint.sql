-- CREATE TABLE users(
--     full_name VARCHAR(300) NOT NULL,
--     yearly_salary INT CHECK(
--         yearly_salary > 0 AND yearly_salary < 100000
--     ),
--     CHECK (yearly_salary < max_salary)
-- );

UPDATE users
SET yearly_salary = NULL
WHERE full_name = 'Jane Smith';

ALTER TABLE users
-- DROP CONSTRAINT CHECK (yearly_salary > 0),
ADD CONSTRAINT yearly_salary_positive
CHECK (yearly_salary > 0);
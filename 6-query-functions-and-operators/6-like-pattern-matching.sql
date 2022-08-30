-- SELECT first_name LIKE '__n%', first_name
-- FROM memberships;

-- SELECT first_name
-- FROM memberships
-- WHERE first_name LIKE 'J___';

SELECT first_name ILIKE 'ma%', first_name
FROM memberships;
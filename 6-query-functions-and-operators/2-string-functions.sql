-- SELECT CONCAT(first_name,' ', last_name)
-- FROM memberships;

-- SELECT first_name || last_name
-- FROM memberships;

-- SELECT *
-- FROM memberships
-- WHERE LENGTH(last_name) < 7;

-- INSERT INTO memberships (
--     membership_start,
--     membership_end,
--     last_checkin,
--     last_checkout,
--     consumption,
--     first_name,
--     last_name,
--     price,
--     billing_frequency,
--     gender

-- )
-- VALUES (
--     '2021-05-02',
--     NULL,
--     '2021-06-05 11:52:25',
--     '2021-06-05 11:58:08',
--     NULL,
--     'Monti',
--     'Durns',
--     199.99,
--     1,
--     TRIM(TRAILING ' ' FROM 'male   ')
-- );

SELECT LENGTH(gender) FROM memberships;
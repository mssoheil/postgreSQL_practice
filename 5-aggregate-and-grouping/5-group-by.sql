-- SELECT booking_date, SUM(num_guests)
-- FROM bookings
-- GROUP BY booking_date;

-- won't work
-- SELECT DISTINCT booking_date, SUM(num_guests)
-- FROM bookings;

-- SELECT p.name, SUM(b.num_guests)
-- FROM payment_methods as p
-- INNER JOIN bookings as b ON p.id = b.payment_id
-- GROUP BY p.name;

-- SELECT p.name, SUM(b.num_guests)
-- FROM payment_methods as p
-- INNER JOIN bookings as b ON p.id = b.payment_id
-- GROUP BY p.name;

SELECT p.name AS payment_name,
b.booking_date, 
SUM(b.num_guests) AS number_of_guests,
ROUND(AVG(b.amount_tipped))
FROM bookings AS b
INNER JOIN payment_methods AS p ON p.id = b.payment_id
GROUP BY p.name, b.booking_date;
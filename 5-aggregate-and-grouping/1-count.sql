-- SELECT COUNT(*) FROM bookings;
-- SELECT COUNT(booking_date) FROM bookings
-- WHERE amount_tipped > 0;

SELECT COUNT(DISTINCT booking_date) FROM bookings;
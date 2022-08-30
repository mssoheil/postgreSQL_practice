-- SELECT amount_billed,
--     CASE WHEN amount_billed > 30 THEN 'Good day'
--          WHEN amount_billed > 15 THEN 'Normal day'
--          ELSE 'Bad day'
--     END AS DAY_TYPE
-- FROM orders;

-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin
-- FROM memberships;

SELECT week_day, 
    CASE WHEN week_day = 1 THEN 'Sunday'
         WHEN week_day = 2 THEN 'Monday'
         WHEN week_day = 3 THEN 'Tuesday'
         WHEN week_day = 4 THEN 'Wednesday'
         WHEN week_day = 5 THEN 'Thursday'
         WHEN week_day = 6 THEN 'Friday'
         WHEN week_day = 7 THEN 'Saturday'
    END
FROM (
    SELECT EXTRACT(DOW FROM last_checkin) AS week_day, last_checkin
    FROM memberships
) AS weed_day_extract;
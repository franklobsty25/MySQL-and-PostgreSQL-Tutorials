-- postgresql only
-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin
-- FROM memberships;

-- MySQL only
-- SELECT WEEKDAY(last_checkin), last_checkin
-- FROM memberships;

-- MySQL only
-- SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
-- FROM memberships;

-- Postgresql only
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;
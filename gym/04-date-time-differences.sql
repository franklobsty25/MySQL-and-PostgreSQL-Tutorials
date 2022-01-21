 -- MySQL only
--  SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
--  FROM memberships;

-- Postgresql best, unexpected result in MySQL
-- SELECT membership_end - membership_start
-- FROM memberships;

-- Postgresql best, unexpected result in MySQL
SELECT NOW() - membership_start
FROM memberships;

-- MySQL 
-- SELECT DATEDIFF(membership_end, membership_start)
-- FROM memberships;

-- MySQL 
-- SELECT DATEDIFF(NOW(), membership_start)
-- FROM memberships;
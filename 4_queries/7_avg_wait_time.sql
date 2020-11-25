--wait time is started_at - created_at
--find avg wait time avg(started_at - created_at)

SELECT avg(started_at - created_at) AS avg_wait_time
FROM assistance_requests
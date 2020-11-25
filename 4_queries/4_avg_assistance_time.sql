--avg time it takes to complete an assistance request
--select average_assistance_request_duration
--timestamp1 - timestamp2 = duration
--sum duration and divide by count(assistance_request.*)

SELECT SUM(completed_at - started_at)/COUNT(assistance_requests.*)
AS average_assistance_request_duration
FROM assistance_requests

-- SELECT avg(completed_at - started_at) as average_assistance_request_duration
-- FROM assistance_requests;
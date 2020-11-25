--avg duration of a single assistance request for each cohort
--select cohort's name and average assistance request time
--order by shortest average to longest

SELECT cohorts.name AS corhort, avg(completed_at - started_at) AS average_assistance_time
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id
GROUP BY cohorts.name
ORDER BY average_assistance_time
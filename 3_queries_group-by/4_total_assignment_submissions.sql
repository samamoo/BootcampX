--total num of assignment submissions for each cohort
--cohort name and total submissions
--order by greatest to least submissions

-- SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
-- FROM cohorts
-- JOIN students
-- ON cohorts.id = cohort_id
-- JOIN assignment_submissions
-- ON students.id = student_id
-- GROUP BY cohorts.name
-- ORDER BY total_submissions DESC;

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;
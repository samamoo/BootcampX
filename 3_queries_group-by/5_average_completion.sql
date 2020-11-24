-- currently enrolled students's average assignment completion time from assignment submissions
-- student name
-- order results from greatest to least duration
-- end_date IS NULL

SELECT students.name AS student, avg(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
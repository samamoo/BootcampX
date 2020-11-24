-- student name whose average time to complete is less than avg time to complete
-- order by average completion time
-- only currently enrolled

SELECT students.name AS student, 
avg(assignment_submissions.duration) AS average_completion_time,
avg(assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions
ON student_id = students.id
JOIN assignments
ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignments.duration) > avg(assignment_submissions.duration)
ORDER BY average_completion_time;
--get data about each assistance request
--select teachers.name, students.name, assignments.name, duration of each assistance request
--subtract completed_at by started_at to find duration
--order by duration


SELECT teachers.name AS teachers,
students.name AS students,
assignments.name AS assignment, 
(assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;
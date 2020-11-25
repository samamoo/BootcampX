-- total num of assistance requests for a student
--'Elliot Dickinson'
-- select name, total num of assistance requests

SELECT students.name AS student, COUNT(assistance_requests.*)
FROM assistance_requests
JOIN students
ON student_id = students.id 
WHERE name = 'Elliot Dickinson'
GROUP BY students.name
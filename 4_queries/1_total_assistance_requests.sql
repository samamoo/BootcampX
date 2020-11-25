-- total num of assistance requests for a teacher
--select teacher's name and total assistance requests

SELECT teachers.name AS teacher_name, COUNT(assistance_requests) AS num_of_requestions
FROM assistance_requests
JOIN teachers
ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;
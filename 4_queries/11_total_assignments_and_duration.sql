--num of assignments of each day 
--total duration of assignments of each day
--select day, num of assignments, and total duration of assignments

SELECT assignments.day, count(assignments.*) as number_of_assignments, sum(assignments.duration) as duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day
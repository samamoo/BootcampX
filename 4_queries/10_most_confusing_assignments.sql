--which assignment has most assistance requests
--select assignments (id, day, chapter, name) and total assistances
--order by total assistances: most to least

SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, count(assistance_requests.*) as total_requests
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC
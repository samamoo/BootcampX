--select the day and total assignments
--order results by day
--only requires assignments table
SELECT day, count(assignments) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day;

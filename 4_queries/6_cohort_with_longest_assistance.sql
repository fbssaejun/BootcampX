SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM students
JOIN assistance_requests ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY AVG(completed_at - started_at) DESC
LIMIT 1;
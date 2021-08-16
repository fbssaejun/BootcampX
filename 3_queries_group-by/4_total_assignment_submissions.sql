SELECT cohorts.name, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.id
ORDER BY COUNT(assignment_submissions.*)DESC;
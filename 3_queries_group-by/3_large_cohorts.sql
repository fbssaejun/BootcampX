SELECT cohorts.name, COUNT(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.id
HAVING COUNT(students.*) >= 18
ORDER BY cohorts.id;
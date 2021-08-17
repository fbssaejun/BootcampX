SELECT COUNT(assistance_requests.*), name
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;
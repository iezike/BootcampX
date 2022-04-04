SELECT id, name, email, cohort_id, github
FROM students 
where github IS NULL
ORDER BY cohort_id;
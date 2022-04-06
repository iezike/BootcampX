-- Alternatively
-- SELECT cohorts.name AS name, avg(completed_at-started_at) as average_assistance_time
-- FROM assistance_requests
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- HAVING avg(completed_at-started_at) >= All (
--   SELECT avg(completed_at-started_at) as average_assistance_time
-- FROM assistance_requests
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- );


SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;
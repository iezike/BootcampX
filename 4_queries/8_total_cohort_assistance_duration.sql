Select cohorts.name cohort, SUM(completed_at-started_at) as total_duration
from assistance_requests
JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id
GROUP by cohort
ORDER BY total_duration;
SELECT DISTINCT teachers.name as teacher,  cohorts.name as cohort
from teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
Where cohorts.name = 'JUL02';


-- Alternatively
-- SELECT DISTINCT teachers.name as teacher,  cohorts.name as cohort
-- from teachers
-- JOIN assistance_requests ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- Where cohorts.name = 'JUL02'
-- GROUP by teacher, cohort;

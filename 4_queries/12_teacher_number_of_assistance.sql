SELECT DISTINCT teachers.name as teacher,  cohorts.name as cohort, COUNT(assistance_requests.teacher_id)
from teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
Where cohorts.name = 'JUL02'
GROUP by teacher, cohort;
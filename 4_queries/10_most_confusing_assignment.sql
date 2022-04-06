SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, count(assistance_requests.assignment_id) total_requests
from assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP by assignments.id
order by count(assistance_requests.assignment_id) DESC;


-- SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;


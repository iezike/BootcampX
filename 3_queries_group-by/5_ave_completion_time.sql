-- SELECT student_id as student, AVG(assignment_submissions.duration) as average_assignment_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- GROUP BY assignment_submissions.student_id
-- WHERE students.end_date is NULL
-- ORDER BY AVG(assignment_submissions.duration) DESC;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
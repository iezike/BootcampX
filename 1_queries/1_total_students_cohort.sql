SELECT COUNT(id) 
FROM students 
-- WHERE cohort_id BETWEEN 1 AND 3; 
WHERE cohort_id IN (1,2,3);
const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


const queryRequest = `
SELECT DISTINCT teachers.name as teacher,  cohorts.name as cohort
from teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
Where cohorts.name = '${process.argv[2] || 'JUL02'}'
ORDER BY TEACHER;
`
pool.query(queryRequest)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.teacher}: ${user.cohort}`);
  })
}).catch(err => console.error('query error', err.stack));


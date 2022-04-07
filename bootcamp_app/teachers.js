const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
// Store all potentially malicious values in an array.
const values = [`${cohortName}`];

const queryRequest = `
SELECT DISTINCT teachers.name as teacher,  cohorts.name as cohort
from teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
Where cohorts.name = $1
ORDER BY TEACHER;
`
pool.query(queryRequest, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.teacher}: ${user.cohort}`);
  })
}).catch(err => console.error('query error', err.stack));


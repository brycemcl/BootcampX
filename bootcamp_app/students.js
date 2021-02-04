const args = process.argv.slice(2);
const { Pool } = require('pg');

const pool = new Pool({
  user: 'username',
  password: 'password',
  host: 'postgres',
  database: 'bootcampx'
});
pool.query(`
SELECT students.name "students_name", students.id "students_id", cohorts.name "cohorts_name"
FROM students
JOIN cohorts
ON students."cohort_id" = cohorts."id"
WHERE cohorts.name LIKE '${args[0]}%'
LIMIT ${args[1]};
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.students_name} has an id of ${user.students_id} and was in the ${user.cohorts_name} cohort`);
    });
  })
  .catch(err => console.error('query error', err.stack));
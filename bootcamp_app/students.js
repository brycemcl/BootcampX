const args = process.argv.slice(2);
const sanitizedArgs = [`${args[0]}%`, args[1]];
const { Pool } = require('pg');

const pool = new Pool({
  user: 'username',
  password: 'password',
  host: 'postgres',
  database: 'bootcampx'
});
console.log(args);
console.log(sanitizedArgs);
pool.query(`
SELECT students.name "students_name", students.id "students_id", cohorts.name "cohorts_name"
FROM students
JOIN cohorts
ON students."cohort_id" = cohorts."id"
WHERE cohorts.name LIKE $1
LIMIT $2
`, sanitizedArgs)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.students_name} has an id of ${user.students_id} and was in the ${user.cohorts_name} cohort`);
    });
  })
  .catch(err => console.error('query error', err.stack));
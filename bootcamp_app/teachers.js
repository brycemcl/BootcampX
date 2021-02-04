const args = process.argv.slice(2);
const { Pool } = require('pg');

const pool = new Pool({
  user: 'username',
  password: 'password',
  host: 'postgres',
  database: 'bootcampx'
});
pool.query(`
SELECT "teachers"."name" "teacher", "cohorts"."name" "cohort", 
COUNT( "assistance_requests"."id" ) "total_assistances" 
FROM  "assistance_requests", "teachers","students","cohorts" 
WHERE "assistance_requests"."teacher_id" = "teachers"."id" 
AND "assistance_requests"."student_id" = "students"."id" 
AND "students"."cohort_id" = "cohorts"."id" 
AND "cohorts"."name" = '${args[0]}' 
GROUP BY "teachers"."name", "cohorts"."name" 
ORDER BY "teacher" ASC
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}: ${user.teacher}`);
    });
  })
  .catch(err => console.error('query error', err.stack));
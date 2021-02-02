SELECT SUM( "assignment_submissions"."duration" ) 
FROM "assignment_submissions", "students", "cohorts" 
WHERE "assignment_submissions"."student_id" = "students"."id" 
AND "students"."cohort_id" = "cohorts"."id" 
AND "cohorts"."name" = 'FEB12'
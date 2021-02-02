SELECT "cohorts"."name" "cohort", 
COUNT( "students"."id" ) "total_submissions" 
FROM "students", "cohorts", "assignment_submissions" 
WHERE "students"."cohort_id" = "cohorts"."id" 
AND "assignment_submissions"."student_id" = "students"."id" 
GROUP BY "cohorts"."name" 
ORDER BY "total_submissions" DESC
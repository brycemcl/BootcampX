SELECT "teachers"."name" "teacher", "cohorts"."name" "cohort", 
COUNT( "assistance_requests"."id" ) "total_assistances" 
FROM  "assistance_requests", "teachers","students","cohorts" 
WHERE "assistance_requests"."teacher_id" = "teachers"."id" 
AND "assistance_requests"."student_id" = "students"."id" 
AND "students"."cohort_id" = "cohorts"."id" 
AND "cohorts"."name" = 'JUL02' 
GROUP BY "teachers"."name", "cohorts"."name" 
ORDER BY "teacher" ASC
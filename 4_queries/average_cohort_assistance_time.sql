SELECT "cohorts"."name", 
AVG( "completed_at" - "started_at" ) "average_assistance_time" 
FROM "assistance_requests", "students", "cohorts" 
WHERE "assistance_requests"."student_id" = "students"."id" 
AND "students"."cohort_id" = "cohorts"."id" 
GROUP BY "cohorts"."name" 
ORDER BY "average_assistance_time" ASC
SELECT
AVG("total_duration") "average_total_duration"
FROM 
(
SELECT  
SUM( "completed_at" - "started_at" ) "total_duration" 
FROM "students", "cohorts", "assistance_requests" 
WHERE "students"."cohort_id" = "cohorts"."id" 
AND "assistance_requests"."student_id" = "students"."id" 
GROUP BY "cohorts"."name" 
ORDER BY "total_duration" ASC
) "total_durations"
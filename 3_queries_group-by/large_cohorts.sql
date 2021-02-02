SELECT "cohorts"."name" "cohort_name", 
COUNT( "students"."id" ) 
FROM "students", "cohorts" 
WHERE "students"."cohort_id" = "cohorts"."id" 
GROUP BY "cohorts"."name" 
HAVING COUNT( "students"."id" ) >= 18
ORDER BY COUNT( "students"."id" ) ASC;
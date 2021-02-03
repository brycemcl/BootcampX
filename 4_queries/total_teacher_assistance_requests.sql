SELECT COUNT( "assistance_requests"."teacher_id" ) "name", "teachers"."name" "total_assistances" 
FROM "assistance_requests", "teachers" 
WHERE "assistance_requests"."teacher_id" = "teachers"."id" 
GROUP BY "teachers"."name" 
HAVING "teachers"."name" = 'Waylon Boehm'
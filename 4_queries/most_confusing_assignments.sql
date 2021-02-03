SELECT "assignments"."id" "id", "assignments"."name" "name", "assignments"."day" "day", "assignments"."chapter" "chapter", 
COUNT( "assistance_requests"."id" ) "total_requests" 
FROM "assistance_requests", "assignments" 
WHERE "assistance_requests"."assignment_id" = "assignments"."id" 
GROUP BY "assignments"."id" 
ORDER BY "total_requests" DESC
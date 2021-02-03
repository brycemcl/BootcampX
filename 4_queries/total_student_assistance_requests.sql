SELECT COUNT( "assistance_requests"."student_id" ) "name", "students"."name" "total_assistances" 
FROM "assistance_requests", "students" 
WHERE "assistance_requests"."student_id" = "students"."id" 
GROUP BY "students"."name" 
HAVING "students"."name" = 'Elliot Dickinson'
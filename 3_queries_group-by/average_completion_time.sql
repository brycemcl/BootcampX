SELECT "students"."name" "student", 
AVG( "assignment_submissions"."duration" ) "average_assignment_duration" 
FROM "assignment_submissions", "students" 
WHERE "assignment_submissions"."student_id" = "students"."id" 
AND "students"."end_date" IS NULL 
GROUP BY "students"."name" 
ORDER BY AVG( "assignment_submissions"."duration" ) DESC;
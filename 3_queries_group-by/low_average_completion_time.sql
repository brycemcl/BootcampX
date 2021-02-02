SELECT "students"."name" "student", 
AVG( "assignment_submissions"."duration" ) "average_assignment_duration", 
AVG( "assignments"."duration" ) "average_estimated_duration"
FROM "assignment_submissions", "assignments", "students" 
WHERE "assignment_submissions"."assignment_id" = "assignments"."id" 
AND "assignment_submissions"."student_id" = "students"."id" 
GROUP BY "students"."name", "students"."end_date" 
HAVING  "students"."end_date" IS NULL 
ORDER BY "average_assignment_duration" ASC
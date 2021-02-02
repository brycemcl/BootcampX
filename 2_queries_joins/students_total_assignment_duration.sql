SELECT SUM( "assignment_submissions"."duration" ) 
FROM "assignment_submissions", "students"
WHERE "assignment_submissions"."student_id" = "students"."id" 
AND "students"."name" = 'Ibrahim Schimmel';

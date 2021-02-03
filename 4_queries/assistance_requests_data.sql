SELECT "teachers"."name" "teacher", "students"."name" "student", "assignments"."name" "assignments", ("assistance_requests"."completed_at" - "assistance_requests"."started_at") "duration"
FROM "assistance_requests", "students", "teachers", "assignments" 
WHERE "assistance_requests"."student_id" = "students"."id" 
AND "assistance_requests"."teacher_id" = "teachers"."id" 
AND "assistance_requests"."assignment_id" = "assignments"."id"
ORDER BY "duration";
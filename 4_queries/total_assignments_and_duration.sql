SELECT "day" "day", 
COUNT( "id" ) "number_of_assignments", 
SUM( "duration" ) "duration" 
FROM "assignments" 
GROUP BY "day"
ORDER BY "day" ASC
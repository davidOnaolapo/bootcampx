SELECT count(assistance_requests.*) as total_assistance,  name
FROM assistance_requests 
JOIN students ON student_id = students.id
WHERE name = 'Elliot Dickinson' 
GROUP BY name;
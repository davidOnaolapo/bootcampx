SELECT cohorts.name as cohort_name, 
  COUNT(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort_name
ORDER BY COUNT(assignment_submissions.*) DESC;

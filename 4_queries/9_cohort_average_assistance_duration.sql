SELECT AVG(total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, 
    SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
  FROM cohorts
  JOIN students ON cohort_id = cohorts.id
  JOIN assistance_requests ON students.id = student_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;
  




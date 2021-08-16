SELECT sum(assignment_submissions.duration) as total_duration FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE cohorts.name = 'FEB12';
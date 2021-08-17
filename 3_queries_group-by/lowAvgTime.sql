SELECT students.name as student, AVG(assignment_submissions.duration) AS average_assigment_duration, AVG(assignments.duration) AS avg_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assigment_duration;
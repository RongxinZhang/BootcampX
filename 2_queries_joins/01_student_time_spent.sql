select SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
join students
on student_id = students.id
where students.name = 'Ibrahim Schimmel';


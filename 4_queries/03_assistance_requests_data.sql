-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.

select teachers.name as teacher_name, 
  students.name as student_name, 
  assignments.name as assingment_name,
  (assistance_requests.completed_at - assistance_requests.started_at) as duration
from assistance_requests
join students on student_id = students.id
join teachers on teacher_id = teachers.id
join assignments on assignment_id = assignments.id
order by duration;
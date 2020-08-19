-- Select the students name and average time from assignment submissions.
-- Order the results from greatest duration to least greatest duration.
-- A student will have a null end_date if they are currently enrolled

select students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
from assignment_submissions
join students on student_id = students.id
where students.end_date is null
group by students.name
order by average_assignment_duration DESC;
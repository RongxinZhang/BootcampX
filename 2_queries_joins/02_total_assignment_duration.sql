select sum(assignment_submissions.duration)
from assignment_submissions
join students
on student_id = students.id
join cohorts
on cohort_id = cohorts.id
where cohorts.name = 'FEB12';
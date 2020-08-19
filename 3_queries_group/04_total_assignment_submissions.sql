select cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
from assignment_submissions
join students on assignment_submissions.student_id = students.id
join cohorts on cohorts.id = students.cohort_id
group by cohort
order by total_submissions DESC

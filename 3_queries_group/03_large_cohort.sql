select cohorts.name as cohort_name, count(students.cohort_id) as student_counts
from students
join cohorts on cohort_id = cohorts.id
group by cohort_name
having count(students.*) >= 18
order by count(students.cohort_id);
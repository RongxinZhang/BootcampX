
select cohorts.name, sum(completed_at-started_at)/count(*) as average_assistance_time
from assistance_requests
join students on student_id = students.id
join cohorts on cohorts.id = students.cohort_id
group by cohorts.name
order by average_assistance_time DESC
limit 1;
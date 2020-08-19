-- Get the total number of assignments for each day of bootcamp
select day, count(day) as total_assignments
from assignments
group by day
order by day;
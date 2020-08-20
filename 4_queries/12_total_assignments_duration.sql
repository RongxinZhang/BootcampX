-- Select the day, 
-- number of assignments, 
-- and the total duration of assignments.
-- Order the results by the day.

select day, 
  count(day) as number_of_assignments,
  sum(duration) as duration
from assignments
group by day
order by day;


-- '谢谢你的爱'
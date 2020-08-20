-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

select assignments.id, 
  assignments.name,
  assignments.day, 
  assignments.chapter, 
  count(assistance_requests.*) as total_requests
from assignments
join assistance_requests on assignments.id = assignment_id
group by assignments.id
order by total_requests DESC;
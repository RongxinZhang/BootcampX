-- Select the teacher's name and the total assistance requests.
-- Since this query needs to work with any specific teacher name, 
-- use 'Waylon Boehm' for the teacher's name here.

select teachers.name, count(assistance_requests.id)
from teachers
join assistance_requests on teachers.id = teacher_id
where teachers.name = 'Waylon Boehm'
group by teachers.name;
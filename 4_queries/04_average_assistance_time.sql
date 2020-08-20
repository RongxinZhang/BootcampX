-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

select sum(completed_at-started_at)/count(*)
from assistance_requests;
SELECT id,name FROM students
where cohort_id=1
ORDER BY name;

SELECT COUNT(*) from students
where cohort_id IN (1,2,3);

SELECT name, id from students
where (email is NULL) OR (phone is NULL);

SELECT name, id, email, cohort_id from students
where email NOT LIKE '%gmail.com' OR phone is NULL;

SELECT name, id, cohort_id 
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;
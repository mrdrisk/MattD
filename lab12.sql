INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

SELECT 7*5;

SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

SELECT CONCAT(course_name, ' - ', semester) AS course_details
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE strftime('%w', lab_time) = '5'; -- 5 = Friday

SELECT assignment_id, assignment_name, due_date
FROM assignments
WHERE due_date > DATE('now');

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

SELECT course_id, course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;

SELECT UPPER(course_name) AS course_name_upper
FROM courses;

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

SELECT course_id, title
FROM assignments
WHERE due_date IS NULL;

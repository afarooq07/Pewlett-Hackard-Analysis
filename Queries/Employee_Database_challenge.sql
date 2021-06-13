-------------------- DELIVERABLE 1 --------------------

-- create retirement_titles table 
-- with employees born between 1952 and 1955
SELECT e.emp_no
      ,e.first_name
	  ,e.last_name
	  ,t.title
	  ,t.from_date
	  ,t.to_date
--INTO retirement_titles	  
FROM employees as e 
INNER JOIN titles as t 
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


select *
from retirement_titles

-- Use Distinct with Orderby to remove duplicate rows
-- and get unique titles
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;


SELECT *
FROM unique_titles;

-- retrieve the number of employees by their most recent 
-- job title who are about to retire.
SELECT COUNT(*), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(*) DESC
;


SELECT * 
FROM retiring_titles;

-------------------- DELIVERABLE 2 --------------------

-- create a mentorship-eligibility table
-- order by t.to_date desc was added to retrieve most recent title
SELECT DISTINCT ON (e.emp_no)  e.emp_no
      ,e.first_name
      ,e.last_name
	  ,e.birth_date
	  ,de.from_date
	  ,de.to_date
	  ,t.title
INTO mentorship_eligibilty	  
FROM employees as e
INNER JOIN dept_employee as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no, t.to_date desc
;

select count(*)
from mentorship_eligibilty;


select count(*), title
from mentorship_eligibilty
group by title
order by count(*) desc;

-------------------- DELIVERABLE 3 --------------------
-- retirement of current employees by department
select count(*), d.dept_name
FROM employees as e
INNER JOIN dept_employee as de
ON (e.emp_no = de.emp_no)
INNER JOIN departments d
ON (de.dept_no = d.dept_no)
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
group by d.dept_name
ORDER BY count(*) DESC

SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
	e.last_name,
    e.gender,
	s.from_date,
	s.to_date,
    s.salary,
	d.dept_name
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_employee de
ON (de.emp_no = e.emp_no)
INNER JOIN departments d
On (de.dept_no = d.dept_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--AND (de.to_date = '9999-01-01')
order by e.emp_no, s.to_date DESC
;

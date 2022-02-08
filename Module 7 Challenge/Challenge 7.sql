
--Challenge started module 7 
--Challenge 7

-- Columns from employees and titles tables for the people who where born between 1952 and 1955.
SELECT e.emp_no, e.first_name, e.last_name, 
	   t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Check the table
SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Check the table
SELECT * FROM unique_titles;

-- Retrieve the number of titles
SELECT COUNT (title) AS "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

-- Check the table
SELECT * FROM retiring_titles;

-- Mentorship program
SELECT DISTINCT ON (e.emp_no) 
	   e.emp_no, e.first_name, e.last_name, e.birth_date,
	   de.from_date, de.to_date, 
	   t.title
INTO mentorship_program
FROM employees AS e
JOIN dept_emp AS de
ON(e.emp_no = de.emp_no)
JOIN titles AS t
ON(e.emp_no=t.emp_no)
WHERE (de.to_date = ('9999-01-01')) AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- Check the table
SELECT * FROM mentorship_program;



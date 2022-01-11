-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE( birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01'AND '1988-12-31');

SELECT COUNT (first_name)
FROM employees
WHERE( birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01'AND '1988-12-31');

--Creating a table with the date we need--
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE( birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01'AND '1988-12-31');

SELECT * FROM retirement_info;

SELECT COUNT (last_name)
FROM retirement_info;


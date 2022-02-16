--Deliverable 1
--Table 1
SELECT e.emp_no,
	      e.first_name,
		  e.last_name,
		  t.title,
		  t.from_date,
		  t.to_date
INTO retirees_titles
FROM employees AS e
	INNER JOIN titles AS t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirees_titles;

-- Table 2
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO retirees_titles_unique
FROM retirees_titles	
WHERE (to_date = '9999-01-01' )
ORDER BY emp_no, to_date DESC;

SELECT * FROM retirees_titles_unique;

--Table 3
SELECT COUNT(emp_no), title
INTO retirees_by_titles
FROM retirees_titles_unique
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retirees_by_titles
		
--Deliverable 2
SELECT DISTINCT ON (e.emp_no)e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		d.from_date,
		d.to_date,
		t.title
INTO mentorship_program_table
FROM employees AS e
	INNER JOIN dept_emp AS d
		ON (e.emp_no = d.emp_no)
			INNER JOIN titles AS t
				ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (d.to_date = '9999-01-01')
ORDER BY emp_no;


SELECT * from mentorship_program_table

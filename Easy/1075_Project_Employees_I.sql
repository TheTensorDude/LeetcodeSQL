WITH cte as
(
	SELECT  p.project_id
	       ,experience_years
	FROM Project p
	LEFT JOIN Employee e
	ON p.employee_id = e.employee_id
)
SELECT  project_id
       ,round(AVG(experience_years),2) AS average_years
FROM cte
GROUP BY  project_id
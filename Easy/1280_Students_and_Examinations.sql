WITH student_cte
(student_id, student_name, subject_name
) AS (
SELECT  *
FROM Students
CROSS JOIN Subjects )
SELECT  sc.student_id
       ,sc.student_name
       ,sc.subject_name
       ,COUNT(e.student_id) AS attended_exams
FROM student_cte sc
LEFT JOIN Examinations e
ON sc.student_id = e.student_id AND sc.subject_name = e.subject_name
GROUP BY  sc.student_id
         ,sc.subject_name
ORDER BY  sc.student_id
         ,sc.subject_name;
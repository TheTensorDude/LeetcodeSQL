SELECT  e.employee_id
       ,e.department_id
FROM employee e
WHERE e.primary_flag = 'Y' or e.employee_id in(
SELECT  employee_id
FROM employee
GROUP BY  employee_id
HAVING COUNT(distinct department_id) = 1);
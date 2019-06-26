SELECT department_id, ROUND(MIN(salary), 2) AS 'min_salary' FROM employees GROUP BY department_id HAVING min_salary > 800;
 
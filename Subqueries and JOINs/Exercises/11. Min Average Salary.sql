SELECT AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY salary
LIMIT 1;
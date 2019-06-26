SELECT 
    department_id,
    CASE
        WHEN department_id = 1 THEN AVG(salary) + 5000
        ELSE AVG(salary)
    END AS 'average_salary'
FROM
    employees
WHERE
    manager_id != 42  AND salary > 30000
GROUP BY department_id
ORDER BY department_id;

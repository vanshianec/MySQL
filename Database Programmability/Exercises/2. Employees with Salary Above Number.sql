CREATE PROCEDURE usp_get_employees_salary_above(salary DOUBLE)
BEGIN
SELECT first_name, last_name
FROM employees e
WHERE e.salary >= salary
ORDER BY e.first_name, e.last_name, e.employee_id;
END
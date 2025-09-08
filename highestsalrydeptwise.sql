

-- Question:

-- Write an SQL query to display the name, department, and salary of employees 
-- who are earning the highest salary in their respective departments.
SELECT E_name, department, salary
FROM employee
WHERE salary IN (
    SELECT MAX(salary)
    FROM employee
    GROUP BY department
);


--max salary from employee table
SELECT MAX(salary) AS max_salary
FROM Employee


--name of maxsalry who are taking max salary

SELECT name AS max_salary_name
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);





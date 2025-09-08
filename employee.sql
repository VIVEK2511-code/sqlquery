-- Write an SQL query to display 
-- each department name and the number of 
-- employees working in that department.


-- GROUP BY Clause in SQL
-- 🔹 Definition

-- The GROUP BY clause is used in SQL to arrange identical data into groups.

-- It is commonly used with aggregate functions such as:

-- COUNT() → counts rows

-- SUM() → total of values

-- AVG() → average

-- MAX() → maximum

-- MIN() → minimum

-- Thus, GROUP BY helps to generate summarized reports from a table.

-- 🔹 Syntax
-- SELECT column_name, AGGREGATE_FUNCTION(column_name)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name
-- HAVING condition;


-- WHERE → filters rows before grouping

-- GROUP BY → makes groups

-- HAVING → filters groups (like WHERE but works after grouping)

select department,count(*) as number_of_employees
from Employee
group by department
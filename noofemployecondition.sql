


-- Write an SQL query to display the department names
--  and the number of employees in each department,
--   but only show those departments that have more than 
--   2 employees.
SELECT department,count(*) AS employeecount
from employee
GROUP BY department
HAVING employeecount>2


-- write an sql display the name of emplyee where department employee is more than 2

SELECT e_name 
from employee
where department=(SELECT department,count(*) AS employeecount
from employee
GROUP BY department
HAVING employeecount>2)


-- What it does
-- GROUP BY department
-- → Groups rows by department.

-- COUNT(*) AS employeecount
-- → Counts how many employees are in each department.

-- HAVING employeecount > 2
-- → Filters the groups and only shows departments that have more than 2 employees.

-- 🔹 Example Table
-- EmpID	Name	Department	Salary
-- 1	A	HR	30000
-- 2	B	HR	32000
-- 3	C	HR	35000
-- 4	D	IT	40000
-- 5	E	IT	42000
-- 6	F	Sales	45000
-- 🔹 Execution

-- Grouping by department:

-- HR → 3 employees

-- IT → 2 employees

-- Sales → 1 employee

-- Apply HAVING employeecount > 2:

-- HR (3) → ✅ included

-- IT (2) → ❌ excluded

-- Sales (1) → ❌ excluded

-- 🔹 Output
-- Department	EmployeeCount
-- HR	3

-- ✅ Key point:

-- WHERE is used before grouping (on individual rows).

-- HAVING is used after grouping (on groups/aggregated results)
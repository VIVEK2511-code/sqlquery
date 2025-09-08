# Write your MySQL query statement below


select max(salary) as  SecondHighestSalary
from Employee
where salary !=(select max(salary) from Employee)


-- name of 2ndmaxsalry who are taking 2nd max salary

SELECT name AS SecondHighestSalary_name
from Employee
where salry=(
select max(salary) as SecondHighestSalary
from Employee
where salary !=(select max(salary) from Employee)

)
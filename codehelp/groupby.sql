-- 🔹 What GROUP BY Does

-- GROUP BY groups rows that have the same values in one or more columns.

-- Often used with aggregate functions (COUNT, SUM, AVG, MIN, MAX).

-- 📌 Example Data: student
-- id	name	city	marks
-- 1	Vivek	Delhi	85
-- 2	Anita	Mumbai	90
-- 3	Rahul	Delhi	75
-- 4	Neha	Pune	88
-- 5	Arjun	Mumbai	70
🔹 1. Count students per city
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city;


-- Result:

-- city	total_students
-- Delhi	2
-- Mumbai	2
-- Pune	1

👉 Groups by city and counts students in each.

🔹 2. Average marks per city
SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city;


-- Result:

-- city	avg_marks
-- Delhi	80.0
-- Mumbai	80.0
-- Pune	88.0
🔹 3. Maximum marks per city
SELECT city, MAX(marks) AS highest_marks
FROM student
GROUP BY city;


-- Result:

-- city	highest_marks
-- Delhi	85
-- Mumbai	90
-- Pune	88
🔹 4. GROUP BY with HAVING

HAVING filters groups (while WHERE filters rows before grouping).

SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city
HAVING COUNT(*) > 1;


Result:

-- city	total_students
-- Delhi	2
-- Mumbai	2

👉 Pune is excluded because it has only 1 student.

✅ Summary:

GROUP BY groups rows.

Use with aggregates like COUNT, SUM, AVG, MIN, MAX.

Use HAVING to filter groups after grouping.

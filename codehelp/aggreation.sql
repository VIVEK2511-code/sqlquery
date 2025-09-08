-- 🔹 What are Aggregation Functions?

-- Aggregation functions perform calculations on a set of values and return a single result.
-- Common ones:

-- COUNT()

-- SUM()

-- AVG()

-- MIN()

-- MAX()

-- They are usually used with GROUP BY, but can also work on the entire table.

-- 📌 Example Table: student
-- id	name	city	marks
-- 1	Vivek	Delhi	85
-- 2	Anita	Mumbai	90
-- 3	Rahul	Delhi	75
-- 4	Neha	Pune	88
-- 5	Arjun	Mumbai	70
🔹 1. COUNT()

Counts rows.

SELECT COUNT(*) AS total_students
FROM student;


-- Result:

-- total_students
-- ---------------
-- 5


-- 👉 Total number of students = 5.

🔹 2. SUM()

Adds up values.

SELECT SUM(marks) AS total_marks
FROM student;


Result:

total_marks
------------
408


👉 Sum of all marks = 408.

🔹 3. AVG()

Calculates the average.

SELECT AVG(marks) AS average_marks
FROM student;


Result:

average_marks
--------------
81.6


👉 Average marks = 81.6.

🔹 4. MIN()

Finds the smallest value.

SELECT MIN(marks) AS lowest_marks
FROM student;


Result:

lowest_marks
-------------
70


👉 Lowest marks = 70 (Arjun).

🔹 5. MAX()

Finds the largest value.

SELECT MAX(marks) AS highest_marks
FROM student;


Result:

highest_marks
--------------
90


👉 Highest marks = 90 (Anita).

🔹 6. With GROUP BY
SELECT city, COUNT(*) AS total_students, AVG(marks) AS avg_marks
FROM student
GROUP BY city;


Result:

city	total_students	avg_marks
Delhi	2	80.0
Mumbai	2	80.0
Pune	1	88.0

✅ Summary of Aggregates

Function	Use
COUNT()	Count rows
SUM()	Total sum of a column
AVG()	Average of values
MIN()	Minimum value
MAX()	Maximum value

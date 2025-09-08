-- 🔹 Rule of Thumb

-- WHERE → filters rows before grouping.

-- HAVING → filters groups after grouping.

-- 📌 Example Table: student
-- id	name	city	marks
-- 1	Vivek	Delhi	85
-- 2	Anita	Mumbai	90
-- 3	Rahul	Delhi	75
-- 4	Neha	Pune	88
-- 5	Arjun	Mumbai	70
🔹 1. Group students by city
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city;


Output:

city    | total_students
--------|----------------
Delhi   | 2
Mumbai  | 2
Pune    | 1

🔹 2. Filter with HAVING
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city
HAVING COUNT(*) > 1;


Output:

city    | total_students
--------|----------------
Delhi   | 2
Mumbai  | 2


-- 👉 HAVING COUNT(*) > 1 removed Pune, since it only has 1 student.

🔹 3. Another Example (average marks per city, only cities with avg > 80)
SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city
HAVING AVG(marks) > 80;


Output:

city    | avg_marks
--------|----------
Delhi   | 80.0
Mumbai  | 80.0
Pune    | 88.0


👉 Here, only cities with average marks greater than 80 are included.

✅ Summary

WHERE → filters rows before grouping.

HAVING → filters grouped results.

Commonly used with aggregate functions (COUNT, AVG, SUM, etc.).

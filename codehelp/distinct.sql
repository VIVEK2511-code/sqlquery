📌 Sample Table: student
id	name	city
1	Vivek	Delhi
2	Anita	Mumbai
3	Rahul	Delhi
4	Neha	Pune
5	Arjun	Mumbai
🔹 1. Without DISTINCT
SELECT city FROM student;


Output:

city
-----
Delhi
Mumbai
Delhi
Pune
Mumbai


👉 Duplicate cities (Delhi, Mumbai) appear multiple times.

🔹 2. With DISTINCT
SELECT DISTINCT city FROM student;


Output:

city
-----
Delhi
Mumbai
Pune


👉 Only unique cities are shown.

🔹 3. Multiple Columns
SELECT DISTINCT city, name FROM student;


Output:

city    | name
--------|-------
Delhi   | Vivek
Mumbai  | Anita
Delhi   | Rahul
Pune    | Neha
Mumbai  | Arjun


👉 Each (city, name) pair is unique, so no rows are removed.

🔹 4. Count Unique Values
SELECT COUNT(DISTINCT city) AS unique_cities
FROM student;


Output:

unique_cities
--------------
3


👉 The table has 3 different cities: Delhi, Mumbai, Pune.

✅ Key Point:

DISTINCT removes duplicate values.

Useful when you only care about unique entries in a column.

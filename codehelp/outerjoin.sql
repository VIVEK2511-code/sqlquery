🔹 What is an OUTER JOIN?

An OUTER JOIN returns rows even if there is no match in one of the tables.
There are 3 types:

LEFT OUTER JOIN (LEFT JOIN) → All rows from the left table, plus matching rows from the right table.

RIGHT OUTER JOIN (RIGHT JOIN) → All rows from the right table, plus matching rows from the left table.

FULL OUTER JOIN → All rows from both tables, with NULLs where there is no match (not supported in MySQL directly, but possible with UNION).

📌 Example Tables
student
id	name	city_id
1	Vivek	1
2	Anita	2
3	Rahul	1
4	Neha	3
5	Arjun	5
city
city_id	city_name
1	Delhi
2	Mumbai
3	Pune
4	Chennai
🔹 1. LEFT OUTER JOIN
SELECT student.id, student.name, city.city_name
FROM student
LEFT JOIN city 
ON student.city_id = city.city_id;


Output:

id	name	city_name
1	Vivek	Delhi
2	Anita	Mumbai
3	Rahul	Delhi
4	Neha	Pune
5	Arjun	NULL

👉 All students are shown, but Arjun has NULL because his city_id=5 doesn’t exist in city.

🔹 2. RIGHT OUTER JOIN
SELECT student.id, student.name, city.city_name
FROM student
RIGHT JOIN city 
ON student.city_id = city.city_id;


Output:

id	name	city_name
1	Vivek	Delhi
2	Anita	Mumbai
3	Rahul	Delhi
4	Neha	Pune
NULL	NULL	Chennai

👉 All cities are shown, but Chennai has NULL because no student lives there.

🔹 3. FULL OUTER JOIN (concept)
SELECT student.id, student.name, city.city_name
FROM student
FULL OUTER JOIN city 
ON student.city_id = city.city_id;


Output (conceptually):

id	name	city_name
1	Vivek	Delhi
2	Anita	Mumbai
3	Rahul	Delhi
4	Neha	Pune
5	Arjun	NULL
NULL	NULL	Chennai

👉 Includes all students and all cities, even when there’s no match.
⚠️ MySQL doesn’t support FULL OUTER JOIN directly → we simulate using LEFT JOIN UNION RIGHT JOIN.

✅ Summary:

INNER JOIN → only matching rows.

LEFT JOIN → all left + matches from right.

RIGHT JOIN → all right + matches from left.

FULL OUTER JOIN → everything from both sides.

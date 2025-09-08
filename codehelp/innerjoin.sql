What is an INNER JOIN?

An INNER JOIN returns rows that have matching values in both tables.

If there is no match, that row is excluded.

📌 Example Tables
student
id	name	city_id
1	Vivek	1
2	Anita	2
3	Rahul	1
4	Neha	3
5	Arjun	2
city
  
city_id	city_name
1      	Delhi
2     	Mumbai
3	      Pune
4	      Chennai
🔹 INNER JOIN Example
SELECT student.id, student.name, city.city_name
FROM student
INNER JOIN city 
ON student.city_id = city.city_id;

✅ Output
id	name	city_name
1	Vivek	Delhi
2	Anita	Mumbai
3	Rahul	Delhi
4	Neha	Pune
5	Arjun	Mumbai

👉 Notice:

Only students with a matching city_id in the city table are shown.

If a student had city_id = 5 (not in city table), they would be excluded.

🔹 Key Points

INNER JOIN = returns only matched rows.

Syntax:

SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;



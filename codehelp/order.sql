-- 📌 Sample Table: student
-- id	name	city
-- 1	Vivek	Delhi
-- 2	Anita	Mumbai
-- 3	Rahul	Delhi
-- 4	Neha	Pune
-- 5	Arjun	Mumbai
-- 🔹 Query 1: Sort by name ASC
  
SELECT * 
FROM student 
ORDER BY name ASC;


-- Result:

-- id	name	city
-- 2	Anita	Mumbai
-- 5	Arjun	Mumbai
-- 4	Neha	Pune
-- 3	Rahul	Delhi
-- 1	Vivek	Delhi

-- 👉 Sorted alphabetically by name (A → Z).

🔹 Query 2: Sort by id DESC
SELECT * 
FROM student 
ORDER BY id DESC;


-- Result:

-- id	name	city
-- 5	Arjun	Mumbai
-- 4	Neha	Pune
-- 3	Rahul	Delhi
-- 2	Anita	Mumbai
-- 1	Vivek	Delhi

👉 Sorted by id in descending order (highest → lowest).

✅ Summary:

ORDER BY name ASC → sorts names alphabetically.

ORDER BY id DESC → sorts by student ID in reverse order.

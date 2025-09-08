-- 🔹 1. WHERE clause

-- Filters rows based on a condition.

SELECT * 
FROM student 
WHERE name = 'Vivek';
-- 👉 Returns only the rows where name = Vivek.

-- 🔹 2. BETWEEN

-- Checks if a value is within a range (inclusive).

SELECT * 
FROM student 
WHERE id BETWEEN 2 AND 5;


-- 👉 Returns students with id = 2, 3, 4, 5.

-- 🔹 3. IN

-- Checks if a value is in a list.

SELECT * 
FROM student 
WHERE name IN ('Vivek', 'Anita', 'Rahul');


-- 👉 Returns students whose name is either Vivek, Anita, or Rahul.

-- 🔹 4. AND / OR

-- Combine multiple conditions.

-- AND → both conditions must be true
SELECT * 
FROM student 
WHERE id > 2 AND name = 'Rahul';

-- OR → at least one condition must be true
SELECT * 
FROM student 
WHERE name = 'Vivek' OR name = 'Neha';

🔹 5. NOT

Negates a condition.

SELECT * 
FROM student 
WHERE name NOT IN ('Vivek', 'Neha');


-- 👉 Returns all students except Vivek and Neha.

-- 🔹 6. IS NULL / IS NOT NULL

-- Used to check for NULL values (since = cannot be used with NULL).

SELECT * 
FROM student 
WHERE name IS NULL;

SELECT * 
FROM student 
WHERE name IS NOT NULL;


-- 👉 Returns rows where the name is missing (NULL) or not missing.

-- ✅ Summary Table

-- Clause / Operator	Meaning	Example
WHERE	Filter rows	WHERE age > 18
BETWEEN	Range check	WHERE age BETWEEN 18 AND 25
IN	List check	WHERE city IN ('Delhi','Mumbai')
AND	Both conditions true	WHERE age > 18 AND city='Delhi'
OR	At least one true	WHERE age < 18 OR city='Delhi'
NOT	Negation	WHERE NOT city='Delhi'
IS NULL	Check null	WHERE address IS NULL
IS NOT NULL	Check not null	WHERE address IS NOT NULL


















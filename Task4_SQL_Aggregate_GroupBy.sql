CREATE TABLE employe (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
INSERT INTO employe (id, name, department, salary) VALUES
(1, 'Amit', 'HR', 40000),
(2, 'Priya', 'HR', 45000),
(3, 'Rahul', 'IT', 60000),
(4, 'Sneha', 'IT', 62000),
(5, 'Ravi', 'Sales', 50000),
(6, 'Pooja', 'Sales', 52000),
(7, 'Anil', 'Finance', 48000),
(8, 'Kiran', 'Finance', 47000);
SELECT SUM(salary) AS total_salary FROM employe;
SELECT AVG(salary) AS average_salary FROM employe;
SELECT COUNT(*) AS total_employees FROM employe;
SELECT department, SUM(salary) AS total_salary
FROM employe
GROUP BY department;
SELECT department, AVG(salary) AS average_salary
FROM employe
GROUP BY department;
SELECT department, COUNT(*) AS total_employees
FROM employe
GROUP BY department;
SELECT department, SUM(salary) AS total_salary
FROM employe
GROUP BY department
HAVING SUM(salary) > 100000;
SELECT department, AVG(salary) AS average_salary
FROM employe
GROUP BY department
HAVING AVG(salary) > 50000;









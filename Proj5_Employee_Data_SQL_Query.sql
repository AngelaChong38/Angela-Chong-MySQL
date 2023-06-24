USE employees;

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;


-- Collect all data. Build a table with all info for each employee
SELECT employees.emp_no, CONCAT(last_name, ', ', first_name) AS Employee, title AS Title, gender AS Gender, 
			  birth_date AS Birthday, dept_name AS Department, CONCAT('$', salary) AS Salary, 
              salaries.from_date, salaries.to_date from employees 
JOIN titles ON employees.emp_no = titles.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
JOIN  departments ON dept_emp.dept_no = departments.dept_no
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
ORDER BY Employee;


-- Who is the 10 oldest employees?
SELECT CONCAT(last_name, ', ', first_name) AS Employee, hire_date AS 'Employee Since' FROM employees
ORDER BY hire_date LIMIT 10;


-- Who is the 10 newest employees?
SELECT CONCAT(last_name, ', ', first_name) AS Employee, hire_date AS 'Employee Since' FROM employees
ORDER BY hire_date DESC LIMIT 10;


-- Average salary of employees by sex
 SELECT 
	CASE
		WHEN gender = 'M' THEN 'Male'
        WHEN gender = 'F' THEN 'Female'
        ELSE 'N/A'
	END AS Gender, 
    CONCAT('$', ROUND(AVG(salary), 2)) AS Avg_Salary from employees
	JOIN salaries ON employees.emp_no = salaries.emp_no
	GROUP BY Gender;


-- What is the percent of male and female employees make above or equal to average salary
WITH cte AS (SELECT AVG(salary) AS avg_salary FROM salaries)

SELECT CASE WHEN gender = 'M' THEN 'Male'
			ELSE 'Female'
		END AS Gender,
        
		CONCAT(ROUND(SUM(CASE WHEN salary >= avg_salary THEN 1
			 ELSE 0
		END) / COUNT(salary)* 100, 2), '%') AS Above_Average,
            
        CONCAT(ROUND(SUM(CASE WHEN salary < avg_salary THEN 1
			 ELSE 0
		END) / COUNT(salary)* 100, 2), '%') AS Below_Average
	
    FROM salaries
    JOIN employees ON salaries.emp_no = employees.emp_no 
    JOIN cte
    GROUP BY gender;


-- rank salary values between employees number 10500-10600
SELECT s.emp_no, CONCAT(last_name, ', ', first_name) AS Employee, CONCAT('$', ROUND(MAX(salary), 2)) AS Salaries 
	from employees e
	JOIN salaries s ON e.emp_no = s.emp_no
	GROUP BY employee, s.emp_no
    HAVING s.emp_no >= 10500 AND s.emp_no <= 10600;


-- list lowest playing employees
SELECT CONCAT(last_name, ', ', first_name) AS Employee, CONCAT('$', ROUND(MAX(salary), 2)) AS Salaries 
	from employees e
	JOIN salaries s ON e.emp_no = s.emp_no
	GROUP BY employee
    ORDER BY Salaries LIMIT 20;


-- What is average salary per department? Which department makes the most?
SELECT dept_name AS Department, CONCAT('$',ROUND(AVG(salary), 2)) AS Salary from employees
	JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
	JOIN salaries ON employees.emp_no = salaries.emp_no
	JOIN  departments ON dept_emp.dept_no = departments.dept_no
	GROUP BY Department ORDER BY Salary DESC;



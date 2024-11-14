CREATE TABLE companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    company_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

INSERT INTO companies (company_id, company_name) VALUES
(1, 'TechCorp'),
(2, 'HealthInc'),
(3, 'FinanceSolutions'),
(4, 'EduGlobal'),
(5, 'RetailWorld');

INSERT INTO employees (employee_id, employee_name, company_id, salary) VALUES
(1, 'Alice', 1, 90000.00),
(2, 'Bob', 2, 70000.00),
(3, 'Charlie', 1, 80000.00),
(4, 'David', 3, 95000.00),
(5, 'Eva', 4, 65000.00),
(6, 'Frank', 5, 60000.00),
(7, 'Grace', 2, 72000.00);


SELECT * FROM COMPANIES

SELECT * FROM EMPLOYEES


/*
Write a SQL query to find employees whose salaries are above the average salary of their respective companies.
*/

SELECT E.EMPLOYEE_NAME,
	   E.SALARY
FROM EMPLOYEES E
WHERE E.SALARY >
	(SELECT AVG(E1.SALARY)FROM EMPLOYEES E1 
		WHERE E.COMPANY_ID = E1.COMPANY_ID)   



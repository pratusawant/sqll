create table employee;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE,
    city VARCHAR(50)
);


INSERT INTO employees VALUES 
(1, 'Amit Sharma', 'IT', 60000, '2020-01-15', 'Mumbai'),
(2, 'Neha Verma', 'HR', 45000, '2019-03-10', 'Pune'),
(3, 'Rahul Gupta', 'IT', 70000, '2021-06-23', 'Delhi'),
(4, 'Sneha Patil', 'Finance', 50000, '2022-07-01', 'Mumbai'),
(5, 'Rajesh Kumar', 'HR', 55000, '2020-11-11', 'Bangalore'),
(6, 'Priya Desai', 'Finance', 65000, '2018-12-30', 'Pune'),
(7, 'Arjun Mehta', 'IT', 75000, '2023-04-05','Delhi');


1. Display all employee details.
select * from employees;

2.List the names and departments of employees who work in 'IT'.
select emp_name,department from  employees
where department ='IT';

3.Find employees who joined after 1st January 2021.
select * from employees
where join_date > '2021-01-01';

4.What is the average salary of all employees?
select avg(salary) as avg_salary from employees;

5.Show the highest salary in each department?
select department,max(salary) as max_salary from employees
GROUP BY department; 

6.List employees from ‘Mumbai’ earning more than ₹50,000.
select * from employees
where city = "Mumbai" and salary > 50000;

7.Count how many employees work in each department.
select department,count(*) as total_employees from employees
GROUP BY department;

8.Find the employee with the earliest joining date.
select * from employees
order by join_date ASC LIMIT 1;

9.Display names of employees whose name starts with ‘A’.
select emp_name from employees 
where emp_name like 'A%';

10.Increase salary by 10% for all employees in IT department.
UPDATE employees SET salary=salary*10%
where department = 'IT'; 




-- Question 01 :- 

create table employees (
	emp_id int primary key,
	emp_name varchar(255),
	department varchar(100),
	salary decimal(18, 2),
	experience int,
	city varchar(100),
	project_name varchar(255),
	project_status varchar(50)
);

insert into employees
values
(101, 'Amit', 'IT', 60000, 3, 'Nagpur', 'Alpha', 'Completed'),
(102, 'Sneha', 'HR', 45000, 2, 'Pune', 'Beta', 'Ongoing'),
(103, 'Rahul', 'IT', 75000, 5, 'Mumbai', 'Gamma', 'Completed'),
(104, 'Priya', 'Finance', 50000, 4, 'Nagpur', 'Alpha', 'Ongoing'),
(105, 'Karan', 'IT', 80000, 6, 'Bangalore', 'Delta', 'Completed'),
(106, 'Neha', 'HR', 48000, 3, 'Pune', 'Beta', 'Completed'),
(107, 'Arjun', 'Finance', 52000, 4, 'Mumbai', 'Gamma', 'Ongoing'),
(108, 'Pooja', 'IT', 72000, 5, 'Nagpur', 'Alpha', 'Completed'),
(109, 'Riya', 'HR', 46000, 2, 'Delhi', 'Delta', 'Ongoing'),
(110, 'Mohit', 'IT', 67000, 4, 'Pune', 'Beta', 'Completed'),
(111, 'Anjali', 'Finance', 53000, 3, 'Nagpur', 'Gamma', 'Completed'),
(112, 'Vikram', 'IT', 78000, 6, 'Mumbai', 'Delta', 'Ongoing');

-- Question 02 :- 

update employees
set salary = 70000
where emp_name = 'Amit';

select * from employees;

-- Question 03 :-

update employees
set project_status = 'Completed'
where project_name = 'Beta';

select * from employees;

-- Question 04 :-

delete from employees
where emp_id = 109;

select * from employees;

-- Question 05 :-

select * from employees
where salary > 70000;

-- Question 06 :-

select * from employees
where city = 'Nagpur';

-- Question 07 :-

select department, count(*) as total_employees
from employees
group by department;

-- Question 08 :-

select sum(salary) as total_salary_IT
from employees
where department = 'IT';

-- Question 09 :-

select city, avg(salary) as average_salary
from employees
group by city;

-- Question 10 :-

select top(3) *from employees
order by salary desc;

-- Question 11 :-

select * from employees
where project_status = 'Completed' and experience > 4;

-- Question 12 :-

select * from employees
where department not in ('HR');



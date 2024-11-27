# Que 1. Create a database named company and a table named employees with the following fields:
#id (INT, Primary Key, Auto Increment) name (VARCHAR(100)) position (VARCHAR(100)) salary (DECIMAL(10,2)) date_of_joining (DATE)

create database Company05;

use Company05;

create table employees05 ( id int auto_increment primary key, name varchar(100), position varchar(100), 
salary decimal(10,2), date_of_joining date);

# Que 2. Insert the following data into the employees table:
#$John Doe, Manager, 55000.00, 2020-01-15, Jane Smith, Developer, 48000.00, 2019-07-10, Alice Johnson, Designer, 45000.00, 2021-03-22, Bob Brown, Developer, 50000.00, 2018-11-01


insert into employees05 (name, position, salary, date_of_joining)
values ('John Doe', 'Manager', 55000.00, '2020-01-15'), ('Jane Smith', 'Developer', 48000.00, '2019-07-10'), ('Alice Johnson', 'Designer', 45000.00, '2021-03-22'),
('Bob Brown', 'Developer', 50000.00, '2018-11-01');

# Que 3. Write a query to retrieve all employees who are Developers.

select*from employees05 where position = 'Developer';

# Que 4. Write a query to update the salary of Alice Johnson to 46000.00.

update employees05 set salary = 46000.00 where id = 3;

# Que 5. Write a query to delete the employee record for Bob Brown.

delete from employees05 where id = 4;

# Que 6.Write a query to find the employees who have a salary greater than 48000.

select*from employees05 where salary>48000;

# Que 7.Write a query to add a new column email to the employees table.

alter table employees05 add email varchar(100);

# Que 8.Write a query to update the email for John Doe to john.doe@company.com.

alter table employees05 add email varchar(100);

# Que 9.Write a query to retrieve only the name and salary of all employees.

select name, salary from employees05;

# Que 10.Write a query to count the number of employees who joined after January 1, 2020.

select count(*) as COUNT from employees05 where date_of_joining> '2020-01-01';

# Que 11.Write a query to order the employees by salary in descending order.

select*from employees05 order by salary desc;

# Que 12.Write a query to drop the email column from the employees table.

alter table employees05 drop column email;

# Que 13.Write a query to find the employee with the highest salary.

select*from employees05 order by salary desc limit 1;







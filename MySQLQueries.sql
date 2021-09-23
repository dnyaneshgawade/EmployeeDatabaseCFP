/* creating and use of database */

create database EmployeeDatabase;

use EmployeeDatabase;

/* creating employees table */

create table employees
(
     EmpId int primary key auto_increment,
     FirstName varchar(50),
     LastName varchar(50),
     Age int,
     Gender varchar(10),
     Salary int(15)
);

/* Display description of employees table */
desc employees;



/* insert records into employees table */

insert into employees(FirstName,LastName,Age,Gender,Salary) values("Dnyanesh","Gawade",24,"Male",40000);
insert into employees(FirstName,LastName,Age,Gender,Salary) values("Saurabh","Shirsath",25,"Male",45000);
insert into employees(FirstName,LastName,Age,Gender,Salary) values("Onkar","Bapat",25,"Male",45000);
insert into employees(FirstName,LastName,Age,Gender,Salary) values("Saumya","Deshmukh",23,"Female",50000);
insert into employees(FirstName,LastName,Age,Gender,Salary) values("Rutuja","Pai",22,"Female",30000);
insert into employees(FirstName,LastName,Age,Gender,Salary) values("Aishwarya","Patil",26,"Female",35000);
insert into employees(FirstName,LastName,Age,Gender,Salary) values("Rahul","Patil",26,"Male",35000);
insert into employees(FirstName,LastName,Age,Gender,Salary) values("Akshay","Kadam",26,"Male",35000);
insert into employees(FirstName,LastName,Age,Gender,Salary) values("Mayuri","Kulkarni",26,"Female",55000);
insert into employees(FirstName,LastName,Age,Gender,Salary) values("Rutuja","Deshpande",23,"Female",60000);


/* retrive all records from employees table */

select * from employees;

/* update records from employees table */

update employees set Salary=70000 where EmpId=6;

/* delete records from employees table */

delete from employees where EmpId=11;


/* retrive maximum salary from employees table */

select Max(Salary) as MaxSal from employees;

/* retrive minimum salary from employees table */

select min(Salary) as MaxSal from employees;

/* retrive Average salary from employees table */

select avg(Salary) as AverageSal from employees;

/* retrive sum of  salary from employees table */

select sum(Salary) as SumOfSal from employees;

/* retrive count of employees from employees table */

select count(EmpId) as CountOfEmployees from employees;

/* delete employees table */

drop table employees;

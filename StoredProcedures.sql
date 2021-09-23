
/* Creating stored procedure for retrive data*/

create procedure sp_retriveData(in gender varchar(20),out maximum int ,out minimum int,out sumofsalary int,out countofemployees int , out averagesalary double)
begin
declare exit handler for sqlexception
begin
rollback;
end;
    
declare exit handler for sqlwarning
begin
rollback;
end;
    
start transaction;
select * from employees;
select name,salary where Gender=gender;
select max(Salary) into maximum from employees;
select min(Salary) into minimum from employees;
select sum(Salary) into sumofsalary from employees;
select avg(Salary) into averagesalary from employees;
select count(FirstName) into countofemployees from employees;
commit;
end **

/* procedure calls*/

call sp_retriveData("male",@maximum,@minimum,@sumofsalary,@averagesalary,@countofemployees)**
select @maximum;
select @minimum;
select @sumofsalary;
select @averagesalary;
select @countofemployees;



/* Creating stored procedure for update data*/

create procedure sp_updateData(in name varchar(20),id int , out empcount int)
begin
declare exit handler for sqlexception
begin
rollback;
end;
    
declare exit handler for sqlwarning
begin
rollback;
end;
    
start transaction;
update employees set FirstName=name where EmpId=id;
select * from employees;
select count(EmpId) into empcount from employees;
commit;
end **


/* procedure calls*/

call sp_updateData("Saumya",4,@empcount);
select @empcount;



/* Creating stored procedure for delete data*/

create procedure sp_deleteData(in id int , out empcount int)
begin
declare exit handler for sqlexception
begin
rollback;
end;
declare exit handler for sqlwarning
begin
rollback;
end;
    
start transaction;
delete from employees where EmpId=id;
select count(EmpId) into empcount from employees;
select * from employees;
commit;
end**


/* procedure calls*/
call sp_deleteData("Saumya",4,@empcount);
select @empcount;



/* Creating stored procedure for insert data*/

create procedure sp_insertData(out empcount int)
begin
declare exit handler for sqlexception
begin
rollback;
end;
    
declare exit handler for sqlwarning
begin
rollback;
end;
    
start transaction;
insert into employees(FirstName,Lastname,Age,Gender,Salary) values("Samar","Desai",22,"male",44000);
insert into employees(FirstName,Lastname,Age,Gender,Salary) values("shikha","sinha",21,"Female",45000);
insert into employees(FirstName,Lastname,Age,Gender,Salary) values("Akshay","Patil",24,"Male",48000);
select * from employees;
select count(EmpId) into empcount from employees;
commit;
end**


/* procedure calls*/

call sp_insertData(@empcount);
select @empcount;

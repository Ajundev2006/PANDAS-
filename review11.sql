create table Employee(Employee_id int AUTO_INCREMENT primary key,First_name varchar(50),
salary int,joining_date date,Department varchar(50));
drop table Employee;
create table Employee(Employee_id int AUTO_INCREMENT primary key,First_name varchar(50),
Last_name varchar(50),
salary int,joining_date date,
Department varchar(50));
select * from Employee;
create table reward(Employee_ref_id int,date_reward date,
amount int,foreign key(Employee_ref_id)references Employee(Employee_id));
drop table reward;
create table reward(Employee_ref_id int,date_reward date,
amount int,foreign key(Employee_ref_id)references Employee(Employee_id));
insert into Employee(Employee_id,First_name,Last_name,salary,joining_date,Department)values(1,"Bob","Kinto",1000000,"2019-01-20","Finance");
insert into Employee(Employee_id,First_name,Last_name,salary,joining_date,Department)values(2,"Jerry","Kansxo",6000000,"2019-01-15","IT");
insert into Employee(Employee_id,First_name,Last_name,salary,joining_date,Department)values(3,"Philip","Jose",8900000,"2019-02-05","Banking");
insert into Employee(Employee_id,First_name,Last_name,salary,joining_date,Department)values(4,"John","Abraham",2000000,"2019-02-25","Insuarance");
insert into Employee(Employee_id,First_name,Last_name,salary,joining_date,Department)values(5,"Michael","Mathew",2200000,"2019-02-28","Finance");
insert into Employee(Employee_id,First_name,Last_name,salary,joining_date,Department)values(6,"Alex","chreketo",4000000,"2019-05-10","IT");
insert into Employee(Employee_id,First_name,Last_name,salary,joining_date,Department)values(7,"Yohan","Soso",1230000,"2019-06-20","Banking");
select * from Employee;
insert into reward(Employee_ref_id,date_reward,amount)values(1,"2019-05-11","1000");
select * from reward;
insert into reward(Employee_ref_id,date_reward,amount)values(2,"2019-02-15","5000");
insert into reward(Employee_ref_id,date_reward,amount)values(3,"2019-04-22","2000");
insert into reward(Employee_ref_id,date_reward,amount)values(1,"2019-06-20","8000");
select * from reward;
drop table reward;
create table reward(Employee_ref_id int,date_reward date,
amount int,foreign key(Employee_ref_id)references Employee(Employee_id));
insert into reward(Employee_ref_id,date_reward,amount)values(1,"2019-05-11","1000");
insert into reward(Employee_ref_id,date_reward,amount)values(2,"2019-02-15","5000");
insert into reward(Employee_ref_id,date_reward,amount)values(3,"2019-04-22","2000");
insert into reward(Employee_ref_id,date_reward,amount)values(4,"2019-06-20","8000");
select first_name,length(first_name) as name_length from Employee;
select replace(first_name ,"o","#") as modified from Employee;
select concat(last_name,"_",First_name) as Full_name from Employee;
select first_name,year(joining_date)as year ,month(joining_date) as month from Employee;
select * from Employee  order by first_name asc;
select * from Employee  order by first_name desc;
select * from Employee  order by first_name asc,salary desc;
select * from Employee where First_name="Bob";
select * from Employee where First_name not in ("Bob","Alex");
select * from Employee where first_name like "B%";
select * from Employee where first_name like "%o%";
select * from Employee where first_name like "%n" and length(first_name)=4;
select * from Employee where first_name like "j%" and length(first_name)=4;
select * from Employee where salary>3000000;
select * from Employee where salary<3000000;
select * from Employee where salary between 2000000 and 5000000;
select * from Employee where first_name="Bob" or first_name="Alex";
select * from Employee where year(joining_date)=2019;
select * from Employee where month(joining_date)=1;
select * from Employee where joining_date<"2019-03-31";
select * from Employee where joining_date>"2019-03-31";
select joining_date from Employee;
select now() current_date_time;
select first_name from Employee where first_name like "%\%%";

select replace (last_name,'_',' ') as last_name  from Employee;
select department,sum(salary) as total_salary from Employee group by department;








v






 


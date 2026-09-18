Q7 joins
create table emplys(emp_id int,emp_name varchar(50),dept_id int, salary int );
insert into  emplys values (1,"nikhil",10,45000),(2,"priya",20,52000),(3,"rahul",10,61000),(4,"sana",30,48000);
select * from emplys;
create table departmment(dept_id int ,dept_name varchar(30));
insert into departmment values(10,"sales"),(20,"marketing"),(30,"support");
select * from departmment;
select e.emp_name,d.dept_name from emplys e join departmment d on e.dept_id =d.dept_id;




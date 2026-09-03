select * from employee;
insert into employee values(7369,"SMITH","CLERK",7902,"1980-12-17",800,NULL,20),
(7499,"ALLEN","SALESMAN",7698,"1981-02-20",1600,300,30),
(7521,"WARD","SALESMAN",7698,"1981-02-22",1250,500,30),
(7566,"JONES","MANAGER",7839,"1981-04-02",2975,NULL,20),
(7654,"MARTIN","SALESMAN",7698,"1981-09-28",1250,1400,30),
(7698,"BLAKE","MANAGER",7839,"1981-05-01",2850,NULL,30),
(7782,"CLARK","MANAGER",7839,"1981-06-09",2450,NULL,10),
(7788,"SCOTT","ANALYST",7566,"1987-04-19",3000,NULL,20),
(7839,"KING","PRESIDENT",NULL,"1981-11-17",5000,NULL,10),
(7844,"TURNER","SALESMAN",7698,"1981-09-08",1500,0,30),
(7876,"ADAMS","CLERK",7788,"1987-05-23",1100,NULL,20),
(7900,"JAMES","CLERK",7698,"1981-12-03",950,NULL,30),
(7902,"FORD","ANALYST",7566,"1981-12-03",3000,NULL,20),
(7934,"MILLER","CLERK",7782,"1982-01-23",1300,NULL,10);

select * from employee;
drop table employee;
create table department(DEPTNO int primary key,DNAME varchar(20),LOC varchar(20));
insert into department values(10,"ACCOUNTING","NEWYORK"),
(20,"RESEARCH","DALLAS"),
(30,"SALES","CHICAGO"),
(40,"OPERATIONS","BOSTON");
CREATE TABLE employee(EMPNO int primary key,ENAME varchar(25),JOB varchar(25),MGR int,HIREDATE date,SAL int,COMM int,DEPTNO int,FOREIGN KEY(department)REFERENCES department(customerid))


select * from employee;
select emp_no,ename,sal from employee;
select distinct job from employee;
select ename,sal*12 as "annual salary" from employee;
select * from department;
select * from department where DEPTNO=10;
select ename,job from employee where job="clerk";
select * from employee where ename like " %s";
select * from employee where ename like '_%L';
select * from employee where ename like "%AR%";
select  * from employee;
select * from employee where hiredate>="1981-01-01";
select ename,sal from employee where sal>=2500;
select * from employee where job !="manager";
select * from employee where comm is not null;
select * from employee where mgr is null;
select * from  department;
select ename from employee where dept_no=30 AND job='salesman';
select ename  from employee where job in("clerk","analyst");
select  ename  from employee where sal between 1000 and 2000;
### ordering and grouping
select * from employee order by ename asc;
select * from employee order by dept_no asc,  sal desc;
select count(*) from employee group by dept_no;
select sum(sal)from employee;
select avg(sal) from employee;
select max(sal),min(sal) from employee;
select dept_no,count(*) from employee group by dept_no;
select job, avg(sal) from employee group by job;
select dept_no,sum(sal) from employee group by dept_no;
select dept_no,count(*) from employee  group by dept_no having count(*)>3;
select job,avg(sal) from employee group by job having avg(sal)>2000;
### Functions
select lower(ename)from employee;
select substring(ename,1,3) from employee;
select ename,length(ename) from employee;
select ename,round(sal) from employee;
select ename,mod(sal,1000) from employee;
select now();
select ename,HIREDATE from employee;
select ename,monthname(HIREDATE) from employee;
#### DDL and DML
alter table department add pincode int;
insert into ;


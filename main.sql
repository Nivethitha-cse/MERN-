create table student(Id integer primary key, Name varchar(20),Age integer,Department varchar(50),Subject varchar(10),Marks integer);

insert into student values(1,'niviee',19,'CSE','data structures',95);
insert into student values(2,'Kiki',19,'CSE','data structures',96);
insert into student values(3,'Niru',19,'CSE','data structures',98);
insert into student values(4,'harris',19,'EEE','Basic EEE',92);
insert into student values(5,'Gk',22,'CSE','data structures',95);
insert into student values(6,'kousi',19,'Mech','Thermodynamics',93);
insert into student values(7,'kumar',22,'ECE','Computer networks',89);
insert into student values(8,'ezhil',22,'Mech','Thermodynamics',85);
insert into student values(9,'john',21,'ECE','Computer networks',90);
insert into student values(10,'kevin',18,'IT','data structures',89);

select * from student;

select count (Id) from student;
select avg(Marks) from student;
select sum(Marks) from student;

create table stdcourse(course Id integer,Name varchar(20));

insert into stdcourse values(1,'niviee');
insert into stdcourse values(8,'ezhil');
insert into stdcourse values(2,'Kiru');
insert into stdcourse values(3,'Niru');
insert into stdcourse values(4,'harris');
insert into stdcourse values(5,'Gk');
insert into stdcourse values(6,'kousi');
insert into stdcourse values(7,'kumar');
insert into stdcourse values(8,'ezhil');
insert into stdcourse values(9,'john');
insert into stdcourse values(10,'Kevin');

--inner join

select stdcourse.course Id,student.Name,student.Subject from student inner join stdcourse on student.Name = stdcourse.Name;

--left join

select student.Id,student.Name,stdcourse.course Id from student Left join stdcourse on student.Name = stdcourse.Name;

--right join

select stdcourse.course Id,stdcourse.name from stdcourse left join student on student.Name = stdcourse.Name;

--outer join

select student.Name,stdcourse.course Id from student left join stdcourse on student.Name = stdcourse.Name UNION select stdcourse.course Id,stdcourse.Name from stdcourse left join student on student.Name = stdcourse.Name;

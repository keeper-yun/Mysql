-- 1
-- 1.(1)
select number,name,birth from student_info;

-- 1.(2)
select name,address from student_info where number='0002';

-- 1.(3)
select name,birth from student_info where birth > '1995-01-01' and sex='女';

-- 2.(1)
select number,classnumber,score from grade where score between 70 and 80;

-- 2.(2)
select avg(score) as 平均成绩 from grade where classnumber='0002';

-- 2.(3)
select count(*) from grade where classnumber='0003';

-- 2.(4)
select name,birth from student_info order by birth desc;

-- 2.(5)
select number,name from student_info where name like '张%';

-- 3
select number,name,sex,birth,address from student_info order by sex,birth desc;

-- 4
select number,avg(score) from grade group by number;

-- 5
SELECT number, name FROM student_info WHERE name LIKE '刘%'
UNION
SELECT number, name FROM student_info WHERE name LIKE '张%';

-- 6.(1)
select name,birth from student_info where sex=(select sex from student_info where name='刘东阳');

-- 6.(2)
select number,name,sex from student_info where number in(select number from grade where classnumber in('0002','0005'));

-- 6.(3)
select min(score) from grade where number='0002';

select classnumber,score from grade where number='0001' and score > any(select min(score) from grade where number='0002');

-- 6.(4)
select max(score) from grade where number='0002';

select classnumber,score from grade where number='0001' and score > all (select max(score) from grade where number='0002');

-- 7.(1)
select s.number,s.name,g.score from student_info s,grade g where s.number=g.number and score between 80 and 90; 

-- 7.(2)
select s.number,s.name,g.score from student_info s inner join grade g on g.number=s.number
    inner join curriculum c on g.classnumber=c.classnumber
		where c.classname='数据库原理及应用';
        
-- 7.(3)
select s.number,s.name,max(g.score) from student_info s,grade g
	where g.number=s.number 
		group by s.number;
        
-- 7.(4)
select s.number,s.name,sum(g.score) from student_info s left join grade g
	on s.number=g.number 
		group by s.number;
        
-- 7.(5)
insert into grade (number,classnumber,score) values ('0004','0006',76);

select c.classnumber,c.classname,count(g.number) from curriculum c right join grade g
	on c.classnumber=g.classnumber
		group by g.classnumber;

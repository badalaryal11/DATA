--Create table Students
--(
-- student_id int not null primary key Identity,
-- Name varchar(100),
--Gender varchar(100) check (Gender in ('M','F')),
-- Class int,
-- RollNo int not null,
-- parent_id int not null foreign key references Parents(parent_id)


-- );
 
--Create table Parents
--(

--parent_id int not null primary key identity,
--FatherName varchar(100),
--MotherName varchar(100),
-- Address varchar(100),
-- Gender varchar(100) check (Gender in ('M','F')), 
-- );


-- INSERT INTO Parents VALUES ('BADAL','SIA','KATHMANDU','M');
-- INSERT INTO Parents VALUES ('RAM','SITA','POKHARA','M');
--INSERT INTO Parents VALUES ('BADAL','GITA','HETAUDA','M');
--INSERT INTO Parents VALUES ('SHYAM','RITA','BHAKTAPUR','M');
--INSERT INTO Parents VALUES ('BASU','SIMA','LALITPUR','M');
--INSERT INTO Parents VALUES ('MANISH','REEMA','KATHMANDU','M');
--INSERT INTO Parents VALUES ('DIPU','RANI','KATHMANDU','F');
--INSERT INTO Parents VALUES ('DIPU','DISC','POKHARA','F');
--INSERT INTO Parents VALUES ('SHYAM','DIPA','KATHMANDU','M');
--INSERT INTO Parents VALUES ('RABI','ELA','LALITPUR','F');

--SELECT * FROM Parents;

--INSERT INTO Students VALUES ('RAM','M',10,123,1)
--INSERT INTO Students VALUES ('RAVI','M',10,123,2)
--INSERT INTO Students VALUES ('HARI','M',10,123,1)
--INSERT INTO Students VALUES ('SITA','F',10,123,4)
--INSERT INTO Students VALUES ('REEMA','F',10,123,3)
--INSERT INTO Students VALUES ('GITA','F',10,123,3)
--INSERT INTO Students VALUES ('RITA','F',10,123,4)
--INSERT INTO Students VALUES ('MANISH','M',10,123,2)
--INSERT INTO Students VALUES ('MAYA','F',10,123,5)
--INSERT INTO Students VALUES ('MANISHA','F',10,123,7)

--  SELECT * FROM Students;

--  SELECT Name, Parent_id from Students
--  INNER JOIN Parents
--  ON Students.parent_id=Parents.Parent_id; 

--  SELECT * FROM Parents;
--  select * from Students;


--SELECT s.student_id, s.Name, s.Gender AS StudentGender, p.FatherName, p.MotherName FROM Students s
--JOIN Parents p on s.parent_id = p.parent_id; 




select p.*, temp.children_count from Parents p
join (select s.parent_id, COUNT(*) as children_count from Students s 
group by s.parent_id) as temp on p.Parent_id = temp.parent_id


select (case when s.Gender = 'M' then 'Male' else 'Female' end) as Gender, COUNT(*) as student_count  from Students s
group by s.Gender





--BadalAryal : pascal case
--badalAryal: camel case
--badal_aryal: snake case

--const decimal PI_VALUE = 3.141789; 
--Drop table Students;
--Drop table Parents;
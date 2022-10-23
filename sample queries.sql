
Use university_db;

--- Fetch student id, name, course, marks and grades for the exams

select concat(person.First_Name,' ',person.First_Name) name, course.Title, Student_Exam_Status.Score score, Grades.ID from Student_Exam_Status
inner join Examination
on Student_Exam_Status.Exam_ID = Examination.ID
inner join Course 
on Examination.Course_ID = Course.ID
inner join Student
on Student.ID = Student_Exam_Status.Student_ID
inner join Person
on Person.id = Student.Person_ID
, Grades where score between grades.Start_Mark and grades.End_Mark;

--- Which is the best performing programs in term of score, irrespective of semester

with T1 as
(select program.Description name, avg(Student_Exam_Status.Score) score from Student_Exam_Status
inner join Examination
on Student_Exam_Status.Exam_ID = Examination.ID
inner join Course 
on Examination.Course_ID = Course.ID
inner join Student
on Student.ID = Student_Exam_Status.Student_ID
inner join Person
on Person.id = Student.Person_ID
inner join Program
on Program.ID = Student.Program_ID
group by program.Description) 
select name, score from T1 where score = (select max(score) from T1);

--- What is the median of the scores

with T1 as 
(select ROW_NUMBER() over(order by score) no, Student_Exam_Status.Score score from Student_Exam_Status
inner join Examination
on Student_Exam_Status.Exam_ID = Examination.ID
inner join Course 
on Examination.Course_ID = Course.ID
inner join Student
on Student.ID = Student_Exam_Status.Student_ID
inner join Person
on Person.id = Student.Person_ID)
select no,avg(score) from T1 
group by no
having no between (select ceiling(cast(count(*) as decimal(8,2))/2) from T1) and (select ceiling((cast(count(*) as decimal(8,2))+1)/2) from T1);

--- print details for all students who is placed in which company and it's CTC

Select pf.ID,pf.Student_ID as Student,c.name as CompanyName,j.CTC from placement_offers as pf 
inner join job_salary as j
on pf.Job_Salary_ID=j.ID
inner join company as c
on j.Company_ID=c.ID;

--- Write query to count no of courses and lectures are there for particular program

SELECT p.Description, count(distinct c.Title) as Lecture_Count,count(*) as Lecture_Count from program as p
inner join course_program_elective_m as cpm
on p.ID=cpm.Program_ID
inner join course as c
on cpm.Course_ID=c.ID
inner join course_lectures_m as clm
on c.ID=clm.Course_ID
group by p.Description;

--- Write a query to get Classroom no for Exams

Select e.ID as Exam, college.Name college, Department.Description department,c.RoomNo as Room from examination as e
inner join exam_class_m as ex
on e.ID=ex.Exam_ID
inner join classroom as c
on ex.Class_ID=c.ID
inner join College
on c.College_ID=college.ID
inner join Department
on Department.ID=c.Dept_ID;

--- display Instructor Salary details with id ,name and salary and order the salary by descending 

SELECT i.ID,concat(p.First_Name,' ',p.Last_Name) name,(s.Base_Ammount+s.House_Rent_Allowance+s.Montly_Bonus+s.Transport_Allowance+s.Medical_Allowance+s.Performance_bonus) as monthly_salary FROM instructor as i
inner join person as p
on i.Person_ID=p.ID
inner join salary as s
on i.Salary_ID=s.ID
order by monthly_salary DESC;


--- find the reference material for courses

SELECT c.Title as Course_Name,r.Title as Reference FROM course as c
inner join courses_ref_materials_m as crm
on c.ID=crm.Course_ID
inner join reference_material as r
on crm.Reference_ID=r.ID;



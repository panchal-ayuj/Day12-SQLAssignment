show databases;
create database student;
use student;

create table StudentBasicInformation(
StudentName varchar(100),
StudentSurname varchar(100),
StudentRollNo decimal(2,0) primary key,
StudentAddress varchar(100),
StudentGender varchar(20),
StudentHeight varchar(20),
OptedScholarship varchar(20)
);
drop table StudentBasicInformation;
select * from StudentBasicInformation;

create table StudentAdmissionPaymentDetails(
StudentRollNo decimal(2,0) primary key,
AmountPaid decimal(10,0),
AmountBalance decimal(10,0),
PaidOn date,
PaidUsing varchar(100),
PaymentDueDate date,
Comments varchar(100)
);

select * from StudentAdmissionPaymentDetails;

create table StudentSubjectInformation(
SubjectOpted varchar(100),
StudentRollNo decimal(2,0) primary key,
SubjectTotalMarks decimal(3,0),
SubjectObtainedMarks decimal(3,0),
StudentMarksPercentage decimal(3,2),
SubjectTeacher varchar(100)
);
select * from StudentSubjectInformation;

create table StudentScholarshipInformation(
StudentRollNo decimal(2,0) primary key,
ScholarshipName varchar(100),
ScholarshipDescription varchar(100),
ScholarshipAmount decimal(10,0),
ScholarshipCategory varchar(100),
ScholarshipConditions varchar(100),
ScholarshipRevokedWhen varchar(100)
);

select * from StudentScholarshipInformation;

insert into StudentBasicInformation values ("A", "A", 01, "City-A", "Male", "100", "Yes");
insert into StudentBasicInformation values ("B", "B", 02, "City-B", "Male", "200", "Yes");
insert into StudentBasicInformation values ("C", "C", 03, "City-A", "Female", "90", "Yes");
insert into StudentBasicInformation values ("D", "D", 04, "City-B", "Male", "120", "No");
insert into StudentBasicInformation values ("E", "E", 05, "City-A", "Male", "140", "Yes");
insert into StudentBasicInformation values ("F", "F", 06, "City-C", "Female", "130", "Yes");
insert into StudentBasicInformation values ("G", "G", 07, "City-B", "Female", "80", "No");
insert into StudentBasicInformation values ("H", "H", 08, "City-A", "Female", "100", "No");
insert into StudentBasicInformation values ("I", "I", 09, "City-B", "Male", "100", "Yes");
insert into StudentBasicInformation values ("J", "J", 10, "City-C", "Male", "170", "Yes");

insert into StudentAdmissionPaymentDetails values (01, 2000, 3000, '2022-10-15', "UPI", '2022-12-01', "None");
insert into StudentAdmissionPaymentDetails values (02, 2500, 2500, '2022-11-11', "UPI", '2022-12-01', "None");
insert into StudentAdmissionPaymentDetails values (03, 3000, 4000, '2022-01-12', "Cash", '2022-12-01', "None");
insert into StudentAdmissionPaymentDetails values (04, 2500, 3500, '2022-10-05', "Check", '2022-12-01', "None");
insert into StudentAdmissionPaymentDetails values (05, 4000, 1000, '2022-10-16', "UPI", '2022-12-01', "None");
insert into StudentAdmissionPaymentDetails values (06, 2000, 2000, '2022-06-23', "Cash", '2022-12-01', "None");
insert into StudentAdmissionPaymentDetails values (07, 3000, 2000, '2022-10-15', "UPI", '2022-12-01', "None");
insert into StudentAdmissionPaymentDetails values (08, 2000, 5000, '2022-09-19', "Check", '2022-12-01', "None");
insert into StudentAdmissionPaymentDetails values (09, 5000, 500, '2022-10-17', "UPI", '2022-12-01', "None");
insert into StudentAdmissionPaymentDetails values (10, 500, 3500, '2022-08-15', "UPI", '2022-12-01', "None");

insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S1",01,100,85,"T1");
insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S3",02,100,35,"T3");
insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S2",03,100,65,"T2");
insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S1",04,100,55,"T1");
insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S3",05,100,95,"T3");
insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S1",06,100,45,"T1");
insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S3",07,100,85,"T3");
insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S2",08,100,90,"T2");
insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S2",09,100,80,"T2");
insert into StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, SubjectTeacher) values ("S3",10,100,70,"T3");

insert into StudentScholarshipInformation (StudentRollNo, ScholarshipName, ScholarshipDescription, ScholarshipAmount, ScholarshipConditions, ScholarshipRevokedWhen) values (01, "Scho-1", "Permanent", 7000, "None", "None");
insert into StudentScholarshipInformation (StudentRollNo, ScholarshipName, ScholarshipDescription, ScholarshipAmount, ScholarshipConditions, ScholarshipRevokedWhen) values (02, "Scho-1", "Permanent", 7000, "None", "None");
insert into StudentScholarshipInformation (StudentRollNo, ScholarshipName, ScholarshipDescription, ScholarshipAmount, ScholarshipConditions, ScholarshipRevokedWhen) values (03, "Scho-2", "Permanent", 4000, "None", "None");
insert into StudentScholarshipInformation (StudentRollNo, ScholarshipName, ScholarshipDescription, ScholarshipAmount, ScholarshipConditions, ScholarshipRevokedWhen) values (06, "Scho-3", "Permanent", 8000, "None", "None");
insert into StudentScholarshipInformation (StudentRollNo, ScholarshipName, ScholarshipDescription, ScholarshipAmount, ScholarshipConditions, ScholarshipRevokedWhen) values (09, "Scho-1", "Permanent", 7000, "None", "None");
insert into StudentScholarshipInformation (StudentRollNo, ScholarshipName, ScholarshipDescription, ScholarshipAmount, ScholarshipConditions, ScholarshipRevokedWhen) values (10, "Scho-1", "Permanent", 7000, "None", "None");


select * from StudentBasicInformation inner join StudentScholarshipInformation on StudentBasicInformation.StudentRollNo = StudentScholarshipInformation.StudentRollNo where StudentScholarshipInformation.ScholarshipAmount > 5000;

select * from StudentBasicInformation left outer join StudentScholarshipInformation on StudentBasicInformation.StudentRollNo = StudentScholarshipInformation.StudentRollNo where StudentBasicInformation.OptedScholarship = "Yes" and StudentScholarshipInformation.ScholarshipAmount is null;

DELIMITER //

Create procedure studentPercentage ()
BEGIN
	DECLARE total_marks int;
    DECLARE obtained_marks int;
    DECLARE roll_no int;
    DECLARE percentage float;
    DECLARE done BOOLEAN DEFAULT FALSE;
    
	DECLARE cur CURSOR FOR 
		SELECT StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks
        FROM StudentSubjectInformation;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND
		SET done = TRUE;
	
    OPEN cur;
    
    subject_loop: LOOP
		FETCH cur INTO roll_no, total_marks, obtained_marks;
        
        IF done THEN
			LEAVE subject_loop;
		END IF;
        
        IF total_marks > 0 THEN
			SET percentage = (obtained_marks/total_marks) * 100;
		ELSE
			SET percentage = 0;
		END IF;
        
        UPDATE StudentSubjectInformation
        SET StudentMarksPercentage = percentage where StudentSubjectInformation.StudentRollNo = roll_no;
	END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL studentPercentage();


DELIMITER //

Create procedure category ()
BEGIN
	DECLARE sch_category varchar(100);
    DECLARE roll_no int;
    DECLARE percentage float;
    DECLARE done BOOLEAN DEFAULT FALSE;
    
	DECLARE cur CURSOR FOR 
		SELECT StudentSubjectInformation.StudentRollNo, StudentSubjectInformation.StudentMarksPercentage
        FROM StudentSubjectInformation inner join StudentScholarshipInformation on
        StudentSubjectInformation.StudentRollNo = StudentScholarshipInformation.StudentRollNo;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND
		SET done = TRUE;
	
    OPEN cur;
    
    category_loop: LOOP
		FETCH cur INTO roll_no, percentage;
        
        IF done THEN
			LEAVE category_loop;
		END IF;
        
        IF percentage > 80 THEN
			SET sch_category = "Best";
		ELSEIF percentage > 60 THEN
			SET sch_category = "Average";
		ELSE
			SET sch_category = "Worst";
		END IF;
        
        UPDATE StudentScholarshipInformation
        SET ScholarshipCategory = sch_category where StudentScholarshipInformation.StudentRollNo = roll_no;
	END LOOP;
    CLOSE cur;
END //
DELIMITER ;

Call category();

create view balance_view as (select a.StudentName, a.StudentSurname, a.StudentRollNo, a.StudentAddress, a.StudentGender, a.StudentHeight, a.OptedScholarship, b.AmountBalance from StudentBasicInformation a inner join StudentAdmissionPaymentDetails b on a.StudentRollNo = b.StudentRollNo);

select * from balance_view;

select a.StudentName, a.StudentSurname, a.StudentRollNo, a.StudentAddress, a.StudentGender, a.StudentHeight, a.OptedScholarship from StudentBasicInformation a LEFT OUTER join StudentScholarshipInformation b on a.StudentRollNo = b.StudentRollNo where b.ScholarshipAmount is null;


DELIMITER //

Create procedure get_balance (IN roll_no int)
BEGIN
	select AmountBalance from StudentAdmissionPaymentDetails where StudentRollNo = roll_no;
END //
DELIMITER ;

CALL get_balance(10);

select a.StudentName, a.StudentSurname, a.StudentRollNo, a.StudentAddress, a.StudentGender, a.StudentHeight, a.OptedScholarship, b.StudentMarksPercentage from StudentBasicInformation a inner join StudentSubjectInformation b on a.StudentRollNo = b.StudentRollNo order by b.StudentMarksPercentage desc limit 5;

select  ScholarshipCategory,count(*) from StudentScholarshipInformation group by ScholarshipCategory;

select  ScholarshipCategory,count(*) as mcount from StudentScholarshipInformation group by ScholarshipCategory order by mcount desc limit 1;


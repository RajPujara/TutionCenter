create table tbl_COURSE
(
	Cid int not null primary key identity(1,1),
	Cname nvarchar(150),
	Duration nvarchar(150),
	Cfees int
);

create table tbl_tutor
(
	Tid int not null primary key identity(1,1),
	Tname nvarchar(150),
	Temail nvarchar(150),
	Tphone nvarchar(10),
	Tcourse nvarchar(150),
	Tqualification nvarchar(150),
	JoinDate date
);


create table tbl_student
(
	Stid int not null primary key identity(1,1),	
	StFname nvarchar(150),
	StLname nvarchar(150),
	StFatherName nvarchar(150),
	StFatherPhone nvarchar(10),
	StEmail nvarchar(150),
	StPhone nvarchar(10),
	CourseJoin nvarchar(150),
	CourseFees int,
	FirstInstallment int,
	FeesDue int,
	JoinDate date
);

drop table tbl_student
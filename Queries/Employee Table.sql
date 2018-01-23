USE [ECLHR]
GO

--drop table [Employee]
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[FullName] [varchar](50) NULL,
	[Gender] int NULL,
	[BloodGroup] int NULL,
	[DOB] [date] NULL,
	[Designation] [varchar](50) NULL,
	[MaritalStatus] int NULL,
	[JoiningDate] [date] NULL,
	[Nationality] int NULL,
	[Status] int NULL,
	[PersonalEmail] [varchar](50) NULL,
	[OfficialEmail] [varchar](50) NULL,
	[Mobile] [varchar](10) NULL,
	[Manager] [varchar](100) NULL,
	[BusinessUnit] [varchar](50) NULL,
	[Location] int NULL
) ON [PRIMARY]


--drop table Address
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] Varchar(5) NULL,
	[HouseNo] [varchar](50) NULL,
	[Street1] [varchar](100) NULL,
	[Street2] [varchar](100) NULL,
	[Country] int NULL,
	[State] int NULL,
	[City] [varchar](100) NULL,
	[District] [varchar](100) NULL,
	[PinCode] [varchar](10) NULL,
	[EmpId] int NOT NULL

) ON [PRIMARY]

GO

alter table Address add HomePhone Varchar(10)

GO
CREATE TABLE [dbo].[Dropdown](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item] [varchar](50) NULL,
	[Value] [varchar](5) NULL,
	[DisplayText] [varchar](250) NULL
) ON [PRIMARY]

--Drop table EmpLanguage

Create Table EmpLanguage(
Id int identity(1,1) NOT NULL,
EmpId int,
LanguageId int,
IsRead bit,
IsWrite bit,
IsSpeak bit,
PrimaryLanguage bit
)

/**********Create Family Detail table************/
create table FamilyDetails(
Id int identity(1,1) NOT NULL,
firstname varchar(50),
middlename varchar(50),
lastname varchar(50),
dateofbirth datetime,
age int,
bloodgroup_id int,
gender_id int,
relation_id int,
birthplace varchar(20),
occupation_id int,
Isdependent bit,
Ismediclaim bit,
country_of_birth_id int,
nationality_id int,
aadhaar Varchar(12)
)

ALTER TABLE familydetails ADD EmpId int

CREATE PROC USP_GET_FAMILYDETAILS (
@pEMPID INT
)
AS 
BEGIN
	select fd.firstname,fd.middlename,fd.lastname,fd.Isdependent,fd.Ismediclaim
	,fd.aadhaar,fd.age,fd.birthplace,fd.dateofbirth
	,fd.bloodgroup_id,bg.DisplayText bloodgroup
	,fd.gender_id,g.DisplayText gender
	,re.DisplayText relation,fd.relation_id,oc.DisplayText occupation,fd.occupation_id
	,cb.DisplayText country_of_birth,fd.country_of_birth_id,fd.nationality_id,na.DisplayText nationality 
	from FamilyDetails fd with (nolock)
	left join Dropdown bg with (nolock) on bg.Id=fd.bloodgroup_id
	left join Dropdown g  with (nolock) on g.Id = fd.gender_id
	left join Dropdown re  with (nolock) on re.Id = fd.relation_id
	left join Dropdown oc  with (nolock) on oc.Id = fd.occupation_id
	left join Dropdown cb  with (nolock) on cb.Id = fd.country_of_birth_id
	left join Dropdown na  with (nolock)  on na.Id = fd.nationality_id
	WHERE FD.EMPID=@pEMPID
END

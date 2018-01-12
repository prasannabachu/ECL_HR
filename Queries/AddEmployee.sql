USE [ECLHR]
GO

INSERT INTO [dbo].[Employee]
           ([Code]
		   ,[Full Name]
           ,[Gender]
           ,[BloodGroup]
           ,[DOB]
           ,[Designation]
           ,[MaritalStatus]
           ,[JoiningDate]
           ,[CitizenShip]
           ,[Status]
           ,[PersonalEmail]
           ,[OfficialEmail]
           ,[Mobile]
           ,[Address])
     VALUES
           ('1','Test Full Name',1,1,'01/01/1990','Software Engineer',1,'01/01/2018',1,1,null,null,'987654321',1)
GO



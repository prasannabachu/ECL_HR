USE [ECLHR]
GO

INSERT INTO [dbo].[Employee]
           ([Code]
		   ,[FullName]
           ,[Gender]
           ,[BloodGroup]
           ,[DOB]
           ,[Designation]
           ,[MaritalStatus]
           ,[JoiningDate]
           ,[Nationality]
           ,[Status]
           ,[PersonalEmail]
           ,[OfficialEmail]
           ,[Mobile]
           ,[Location])
     VALUES
           ('1','Test Full Name','M','O+','01/01/1990','Software Engineer','S','01/01/2018','I','P',null,null,'987654321','H')
GO


USE [ECLHR]
GO

INSERT INTO [dbo].[Address]
           ([Type]
           ,[HouseNo]
           ,[Street1]
           ,[Street2]
           ,[Country]
           ,[State]
           ,[City]
           ,[District]
           ,[PinCode]
		   ,[EmpId])
     VALUES
           ('PR'
           ,'1-1/3'
           ,'Hitech City'
           ,'Madhapur'
           ,'I'
           ,'TS'
           ,'Hyderabad'
           ,'Rangareddy'
           ,'500081'
		   ,1)




INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','D','Divorced')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','M','Married')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','O','Other')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','S','Single')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','W','Widowed')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','A','American')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','B','British')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','C','Chinese')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','FI','Filipino')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','F','French')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','I','Indian')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','IT','Italian')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','J','Japanese')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','K','Korean')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','T','Thai')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Gender','F','Female')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Gender','M','Male')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','O+','O Positive')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','O-','O Negative')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','AB+','AB Positive')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','AB-','AB Negative')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','A+','A Positive')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','A-','A Negative')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','B+','B Positive')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','B-','B Negative')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Status','TP','Temporary')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Status','T','Terminated')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Status','AB','Absconded')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Status','P','Permanent')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Location','H','Hyderabad')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Location','C','Chennai')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Location','F','Faridabad')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Location','O','Other')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Country','I','India')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Country','US','United States')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
      VALUES('Country','UAE','United Arab Emirated')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Country','PH','Phillipines')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('State','TS','Telangana')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('AddressType','PR','Present')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('AddressType','PE','Permanent')

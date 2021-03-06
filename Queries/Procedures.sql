USE [ECLHR]
GO
/****** Object:  StoredProcedure [dbo].[USP_SAVE_PERSONALINFO]    Script Date: 1/18/2018 3:18:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROC [dbo].[USP_SAVE_PERSONALINFO](
@pID INT
,@pLEGALNAME VARCHAR(100)
,@pDOB DATETIME
,@pGENDER INT
,@pMarital_Status INT
,@pNationality INT
)
AS
BEGIN
	IF NOT EXISTS(SELECT 1 FROM Employee WITH (NOLOCK) WHERE Id=@pID)
	BEGIN
		INSERT INTO EMPLOYEE (FULLNAME,DOB,GENDER,MARITALSTATUS,NATIONALITY) 
		VALUES (@pLEGALNAME,@pDOB,@pGENDER,@pMARITAL_STATUS,@pNATIONALITY)
	END
	ELSE
	BEGIN
		UPDATE Employee 
		SET FULLNAME=@pLEGALNAME
			,DOB=@pDOB
			,GENDER=@pGENDER
			,MARITALSTATUS=@pMarital_Status
			,NATIONALITY=@pNationality
		WHERE Id=@pID
	END
END


CREATE PROC USP_GET_DROPDOWN_DETAILS
(
@pITEM VARCHAR(100),
@pPARENTID INT = NULL
)
AS
BEGIN
	SELECT 0 Id,'--Select--' DisplayText,NULL ParentId
	Union
	SELECT Id,DisplayText,ParentId FROM DROPDOWN WHERE Item=@pITEM AND ISNULL(ParentID,0)=ISNULL(@pPARENTID,0)
END

--exec USP_GET_DROPDOWN_DETAILS 'Country'

CREATE 
alter PROC [dbo].[USP_GET_COMMUNICATIONDETAILS] (
@pEmpID INT,
@pType Varchar(10)
)
AS 
BEGIN
	SELECT A.Id,A.Type,A.HouseNo,A.Street1,A.Street2,C.Id CountryId,C.DisplayText Country,S.Id As StateId,S.DisplayText State,City,District,PinCode,EmpId,A.HomePhone 
	FROM ADDRESS A with (nolock)
	INNER JOIN Dropdown C on C.Id = A.Country
	INNER JOIN Dropdown S on S.Id = A.State 
	WHERE A.EMPID=@pEMPID and A.Type=@pType
END

--USP_GET_COMMUNICATIONDETAILS 1,'PE'
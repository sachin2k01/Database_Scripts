USE [SProcedure]
GO
/****** Object:  StoredProcedure [dbo].[spGetEmployeByDepIdAndDepName]    Script Date: 28-12-2023 14:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[spGetEmployeByDepIdAndDepName]
@DepId INT,
@DepName varchar(50)

AS
BEGIN 
	SELECT e.EmpId,e.EmpName,e.Salary,d.DepId,d.DepName,d.DepLocation FROM Employee e,Department d where d.DepId=@DepId AND d.DepName=@DepName
END
USE [CheDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_RaiseError]    Script Date: 12/03/2019 13:06:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_RaiseError]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Usando TRY CATCH en SQL Server no pasa el error al código ADO.NET y su try, catch, finally
	-- Ejecutando un RAISERROR ('mensaje, 16, 1); si la haría

	BEGIN TRY      
	   SELECT 1/0
	END TRY

	BEGIN CATCH

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT; 
		SELECT @ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE(); 
		RAISERROR (@ErrorMessage,  @ErrorSeverity, 	  @ErrorState  ); 
	END CATCH

END

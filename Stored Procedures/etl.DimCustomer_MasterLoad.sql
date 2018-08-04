SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO






CREATE PROCEDURE [etl].[DimCustomer_MasterLoad]
AS
BEGIN


-- Data Uploader
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'UnitedCenter', @LoadView = 'api.UploadDimCustomerStaging', @LogLevel = '2', @DropTemp = '1', @IsDataUploaderSource = '1'

-- TM
EXEC MDM.etl.LoadDimCustomer @ClientDB = 'UnitedCenter', @LoadView = 'etl.vw_Load_DimCustomer_TM', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0';



END;























GO

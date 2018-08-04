CREATE TABLE [bkp].[stg__RetailPro_UDF_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____0D84EF7E] DEFAULT (getdate()),
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

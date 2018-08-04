CREATE TABLE [bkp].[ods__RetailPro_CMS_USER_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____0BD1B136] DEFAULT (getdate()),
[ETL__UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____0CC5D56F] DEFAULT (getdate()),
[ETL__IsDeleted] [bit] NOT NULL CONSTRAINT [DF__RetailPro__ETL____0DB9F9A8] DEFAULT ((0)),
[ETL__DeletedDate] [datetime] NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[USER_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[USER_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMPL_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

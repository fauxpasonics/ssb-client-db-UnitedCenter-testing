CREATE TABLE [bkp].[ods__RetailPro_ADJ_COMMENT_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____74EE4BDE] DEFAULT (getdate()),
[ETL__UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____75E27017] DEFAULT (getdate()),
[ETL__IsDeleted] [bit] NOT NULL CONSTRAINT [DF__RetailPro__ETL____76D69450] DEFAULT ((0)),
[ETL__DeletedDate] [datetime] NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADJ_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENT_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENTS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

CREATE TABLE [bkp].[ods__RetailPro_INVC_COMMENT_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____33DFA290] DEFAULT (getdate()),
[ETL__UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____34D3C6C9] DEFAULT (getdate()),
[ETL__IsDeleted] [bit] NOT NULL CONSTRAINT [DF__RetailPro__ETL____35C7EB02] DEFAULT ((0)),
[ETL__DeletedDate] [datetime] NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INVC_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENT_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENTS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

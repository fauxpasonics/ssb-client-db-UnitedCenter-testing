CREATE TABLE [bkp].[stg__RetailPro_INVC_COMMENT_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____31F75A1E] DEFAULT (getdate()),
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INVC_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENT_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENTS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

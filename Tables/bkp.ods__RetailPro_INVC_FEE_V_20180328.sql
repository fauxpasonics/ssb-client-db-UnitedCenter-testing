CREATE TABLE [bkp].[ods__RetailPro_INVC_FEE_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____39987BE6] DEFAULT (getdate()),
[ETL__UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____3A8CA01F] DEFAULT (getdate()),
[ETL__IsDeleted] [bit] NOT NULL CONSTRAINT [DF__RetailPro__ETL____3B80C458] DEFAULT ((0)),
[ETL__DeletedDate] [datetime] NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INVC_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FEE_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

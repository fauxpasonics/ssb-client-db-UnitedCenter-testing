CREATE TABLE [bkp].[ods__RetailPro_PO_QTY_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____61A66D40] DEFAULT (getdate()),
[ETL__UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____629A9179] DEFAULT (getdate()),
[ETL__IsDeleted] [bit] NOT NULL CONSTRAINT [DF__RetailPro__ETL____638EB5B2] DEFAULT ((0)),
[ETL__DeletedDate] [datetime] NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_POS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STORE_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORD_QTY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCVD_QTY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ECM_FLAG] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

CREATE TABLE [bkp].[ods__RetailPro_ADJ_ITEM_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____7AA72534] DEFAULT (getdate()),
[ETL__UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____7B9B496D] DEFAULT (getdate()),
[ETL__IsDeleted] [bit] NOT NULL CONSTRAINT [DF__RetailPro__ETL____7C8F6DA6] DEFAULT ((0)),
[ETL__DeletedDate] [datetime] NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADJ_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_POS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORIG_VALUE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADJ_VALUE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRICE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TAX_PERC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_VALUE1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

CREATE TABLE [bkp].[stg__RetailPro_INVC_ITEM_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____3D690CCA] DEFAULT (getdate()),
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INVC_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_POS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLERK_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QTY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORIG_PRICE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORIG_TAX_AMT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRICE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TAX_PERC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TAX_AMT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRICE_LVL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DISC_REASON_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

CREATE TABLE [stg].[RetailPro_Adj_Item_v]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
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
ALTER TABLE [stg].[RetailPro_Adj_Item_v] ADD CONSTRAINT [PK__RetailPr__C4EA24450766216E] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO

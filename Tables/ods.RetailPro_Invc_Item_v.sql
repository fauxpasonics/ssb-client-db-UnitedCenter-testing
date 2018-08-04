CREATE TABLE [ods].[RetailPro_Invc_Item_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[INVC_SID] [bigint] NULL,
[ITEM_POS] [int] NULL,
[ITEM_SID] [bigint] NULL,
[CLERK_ID] [int] NULL,
[QTY] [decimal] (18, 6) NULL,
[ORIG_PRICE] [decimal] (18, 6) NULL,
[ORIG_TAX_AMT] [decimal] (18, 6) NULL,
[PRICE] [decimal] (18, 6) NULL,
[TAX_PERC] [decimal] (18, 6) NULL,
[TAX_AMT] [decimal] (18, 6) NULL,
[COST] [decimal] (18, 6) NULL,
[PRICE_LVL] [int] NULL,
[DISC_REASON_ID] [int] NULL
)
GO
ALTER TABLE [ods].[RetailPro_Invc_Item_v] ADD CONSTRAINT [PK_ods__RetailPro_Invc_Item_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Invc_Item_v] ON [ods].[RetailPro_Invc_Item_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Invc_Item_v] ([ETL__UpdatedDate] DESC)
GO

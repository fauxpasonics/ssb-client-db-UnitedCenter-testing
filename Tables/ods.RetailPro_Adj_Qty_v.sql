CREATE TABLE [ods].[RetailPro_Adj_Qty_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ADJ_SID] [bigint] NULL,
[ITEM_POS] [int] NULL,
[STORE_NO] [int] NULL,
[QTY] [decimal] (18, 6) NULL
)
GO
ALTER TABLE [ods].[RetailPro_Adj_Qty_v] ADD CONSTRAINT [PK_ods__RetailPro_Adj_Qty_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Adj_Qty_v] ON [ods].[RetailPro_Adj_Qty_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Adj_Qty_v] ([ETL__UpdatedDate] DESC)
GO

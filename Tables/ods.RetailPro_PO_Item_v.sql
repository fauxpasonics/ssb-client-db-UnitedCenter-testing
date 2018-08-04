CREATE TABLE [ods].[RetailPro_PO_Item_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[PO_SID] [bigint] NULL,
[ITEM_POS] [int] NULL,
[ITEM_SID] [bigint] NULL,
[PRICE] [decimal] (18, 6) NULL,
[COST] [decimal] (18, 6) NULL,
[FC_COST] [decimal] (18, 6) NULL,
[CURRENCY_ID] [int] NULL,
[TAX_CODE] [int] NULL,
[TAX_PERC] [decimal] (18, 6) NULL,
[TAX_AREA2_ID] [int] NULL,
[TAX_CODE2] [int] NULL,
[TAX_PERC2] [decimal] (18, 6) NULL,
[SRC_SBS_NO] [int] NULL,
[UDF_VALUE1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_VALUE2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_VALUE3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_VALUE4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ECM_FLAG] [int] NULL,
[ITEM_NOTE1] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NOTE2] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NOTE3] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NOTE4] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NOTE5] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NOTE6] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NOTE7] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NOTE8] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NOTE9] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NOTE10] [nvarchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ALT_UPC] [bigint] NULL,
[ALT_ALU] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ALT_COST] [decimal] (18, 6) NULL,
[ALT_VEND_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[RetailPro_PO_Item_v] ADD CONSTRAINT [PK_ods__RetailPro_PO_Item_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_PO_Item_v] ON [ods].[RetailPro_PO_Item_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_PO_Item_v] ([ETL__UpdatedDate] DESC)
GO

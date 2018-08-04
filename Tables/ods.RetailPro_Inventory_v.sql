CREATE TABLE [ods].[RetailPro_Inventory_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ITEM_SID] [bigint] NULL,
[DESCRIPTION1] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTION2] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTION3] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTION4] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UPC] [bigint] NULL,
[LOCAL_UPC] [bigint] NULL,
[SCALE_NAME] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZ_ORD] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE_SID] [bigint] NULL,
[ATTR] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST] [decimal] (18, 6) NULL,
[FC_COST] [decimal] (18, 6) NULL,
[FST_RCVD_DATE] [date] NULL,
[LST_RCVD_DATE] [date] NULL,
[LST_SOLD_DATE] [date] NULL,
[CREATED_DATE] [date] NULL,
[MODIFIED_DATE] [date] NULL,
[FST_PRICE] [decimal] (18, 6) NULL,
[MARKDOWN_PRICE] [decimal] (18, 6) NULL,
[LST_RCVD_COST] [decimal] (18, 6) NULL,
[MIN_ORD_QTY] [decimal] (18, 6) NULL,
[VEND_LEAD_TIME] [int] NULL,
[VEND_LIST_COST] [decimal] (18, 6) NULL,
[TRADE_DISC_PERC] [decimal] (18, 6) NULL,
[ACTIVE] [bit] NULL,
[ALU] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCS_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VEND_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCALE_NO] [int] NULL,
[SIZ] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[RetailPro_Inventory_v] ADD CONSTRAINT [PK_ods__RetailPro_Inventory_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Inventory_v] ON [ods].[RetailPro_Inventory_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Inventory_v] ([ETL__UpdatedDate] DESC)
GO

CREATE TABLE [bkp].[ods__NCR_SaleItems_20180322]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SaleID] [bigint] NULL,
[SaleItemID] [bigint] NULL,
[StockID] [bigint] NULL,
[UnitPrice] [decimal] (18, 6) NULL,
[PriceLevelID] [bigint] NULL,
[UnitQuantity] [decimal] (18, 6) NULL,
[Discount] [decimal] (18, 6) NULL,
[StringData] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationID] [bigint] NULL,
[ClerkID] [bigint] NULL,
[ComboSaleItemID] [bigint] NULL,
[TaxExclusive1] [decimal] (18, 6) NULL,
[TaxExclusive2] [decimal] (18, 6) NULL,
[TaxExclusive3] [decimal] (18, 6) NULL,
[TaxExclusive4] [decimal] (18, 6) NULL,
[TaxInclusive1] [decimal] (18, 6) NULL,
[TaxInclusive2] [decimal] (18, 6) NULL,
[TaxInclusive3] [decimal] (18, 6) NULL,
[TaxInclusive4] [decimal] (18, 6) NULL
)
GO
ALTER TABLE [bkp].[ods__NCR_SaleItems_20180322] ADD CONSTRAINT [PK_ods__SaleItems] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__SaleItems] ON [bkp].[ods__NCR_SaleItems_20180322]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [bkp].[ods__NCR_SaleItems_20180322] ([SaleID], [SaleItemID]) INCLUDE ([ETL__DeltaHashKey])
GO

CREATE TABLE [ods].[NCR_SaleItems]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SaleID] [bigint] NULL,
[SaleItemID] [bigint] NULL,
[StockID] [bigint] NULL,
[Price] [decimal] (18, 6) NULL,
[PriceLevelID] [bigint] NULL,
[Quantity] [decimal] (18, 6) NULL,
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
ALTER TABLE [ods].[NCR_SaleItems] ADD CONSTRAINT [PK_ods__SaleItems] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__SaleItems] ON [ods].[NCR_SaleItems]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_SaleItems] ([SaleID], [SaleItemID]) INCLUDE ([ETL__DeltaHashKey])
GO

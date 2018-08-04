CREATE TABLE [stg].[NCR_SaleItems]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SaleID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SaleItemID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StockID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRICE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PriceLevelID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QUANTITY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Discount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StringData] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClerkID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ComboSaleItemID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxExclusive1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxExclusive2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxExclusive3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxExclusive4] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxInclusive1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxInclusive2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxInclusive3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxInclusive4] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_SaleItems] ADD CONSTRAINT [PK_stg__SaleItems] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__SaleItems] ON [stg].[NCR_SaleItems]
GO

CREATE TABLE [stg].[NCR_EventPysicalSalesExport]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StockID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdjustmentMealsQty] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdjustmentSpoilageQty] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UnitPrice] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UnitCost] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiscountValue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartQuantityPosted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalStartQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalStartQuantityPosted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PretransferInQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PretransferOutQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventTransferInQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventTransferOutQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdjustInventoryInQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdjustInventoryOutQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EndQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalEndQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalEndQuantityPosted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RecipeUnitQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalSales] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalSalesTaxIncluded] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalSalesTaxExcluded] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminalSalesQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminalSalesValue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminalSalesTaxExcluded] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminalSalesTaxIncluded] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Variance] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CloseOutQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsCalculated] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_EventPysicalSalesExport] ADD CONSTRAINT [PK_stg__EventPysicalSalesExport] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__EventPysicalSalesExport] ON [stg].[NCR_EventPysicalSalesExport]
GO

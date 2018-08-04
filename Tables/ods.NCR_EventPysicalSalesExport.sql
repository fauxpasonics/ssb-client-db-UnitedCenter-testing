CREATE TABLE [ods].[NCR_EventPysicalSalesExport]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[OrganizationID] [bigint] NULL,
[EventID] [bigint] NULL,
[LocationID] [bigint] NULL,
[StockID] [bigint] NULL,
[AdjustmentMealsQty] [decimal] (18, 6) NULL,
[AdjustmentSpoilageQty] [decimal] (18, 6) NULL,
[UnitPrice] [decimal] (18, 6) NULL,
[UnitCost] [decimal] (18, 6) NULL,
[DiscountValue] [decimal] (18, 6) NULL,
[StartQuantity] [decimal] (18, 6) NULL,
[StartQuantityPosted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalStartQuantity] [decimal] (18, 6) NULL,
[PhysicalStartQuantityPosted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PretransferInQuantity] [decimal] (18, 6) NULL,
[PretransferOutQuantity] [decimal] (18, 6) NULL,
[EventTransferInQuantity] [decimal] (18, 6) NULL,
[EventTransferOutQuantity] [decimal] (18, 6) NULL,
[AdjustInventoryInQuantity] [decimal] (18, 6) NULL,
[AdjustInventoryOutQuantity] [decimal] (18, 6) NULL,
[EndQuantity] [decimal] (18, 6) NULL,
[PhysicalEndQuantity] [decimal] (18, 6) NULL,
[PhysicalEndQuantityPosted] [decimal] (18, 6) NULL,
[RecipeUnitQuantity] [decimal] (18, 6) NULL,
[PhysicalQuantity] [decimal] (18, 6) NULL,
[PhysicalSales] [decimal] (18, 6) NULL,
[PhysicalSalesTaxIncluded] [decimal] (18, 6) NULL,
[PhysicalSalesTaxExcluded] [decimal] (18, 6) NULL,
[TerminalSalesQuantity] [decimal] (18, 6) NULL,
[TerminalSalesValue] [decimal] (18, 6) NULL,
[TerminalSalesTaxExcluded] [decimal] (18, 6) NULL,
[TerminalSalesTaxIncluded] [decimal] (18, 6) NULL,
[Variance] [decimal] (18, 6) NULL,
[CloseOutQuantity] [decimal] (18, 6) NULL,
[IsCalculated] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[NCR_EventPysicalSalesExport] ADD CONSTRAINT [PK_ods__EventPysicalSalesExport] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__EventPysicalSalesExport] ON [ods].[NCR_EventPysicalSalesExport]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_EventPysicalSalesExport] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

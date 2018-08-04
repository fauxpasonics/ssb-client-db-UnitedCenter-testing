CREATE TABLE [stg].[NCR_CashMedia]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogicalID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Denomination] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DenominationAmount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rolled] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InRollQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MediaID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Bankable] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ordering] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsCoupon] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsVisibleQuickDrop] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDenominationMultiple] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_CashMedia] ADD CONSTRAINT [PK_stg__CashMedia] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__CashMedia] ON [stg].[NCR_CashMedia]
GO

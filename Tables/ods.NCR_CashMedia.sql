CREATE TABLE [ods].[NCR_CashMedia]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Denomination] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DenominationAmount] [decimal] (18, 6) NULL,
[Rolled] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InRollQuantity] [decimal] (18, 6) NULL,
[MediaID] [bigint] NULL,
[Bankable] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ordering] [decimal] (18, 6) NULL,
[IsCoupon] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsVisibleQuickDrop] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDenominationMultiple] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[NCR_CashMedia] ADD CONSTRAINT [PK_ods__CashMedia] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__CashMedia] ON [ods].[NCR_CashMedia]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_CashMedia] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

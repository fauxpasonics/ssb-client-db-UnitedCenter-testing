CREATE TABLE [ods].[NCR_EventTillClerkMedia]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[EventID] [bigint] NULL,
[TillID] [bigint] NULL,
[LocationID] [bigint] NULL,
[ClerkID] [bigint] NULL,
[MediaID] [bigint] NULL,
[Quantity] [decimal] (18, 6) NULL,
[Amount] [decimal] (18, 6) NULL,
[FirstSale] [datetime] NULL,
[LastSale] [datetime] NULL,
[FirstSaleNumber] [bigint] NULL,
[LastSaleNumber] [bigint] NULL,
[TipAmount] [decimal] (18, 6) NULL,
[TipQuantity] [decimal] (18, 6) NULL
)
GO
ALTER TABLE [ods].[NCR_EventTillClerkMedia] ADD CONSTRAINT [PK_ods__EventTillClerkMedia] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__EventTillClerkMedia] ON [ods].[NCR_EventTillClerkMedia]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_EventTillClerkMedia] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

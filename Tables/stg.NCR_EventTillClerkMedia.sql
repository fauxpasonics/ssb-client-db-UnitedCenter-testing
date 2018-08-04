CREATE TABLE [stg].[NCR_EventTillClerkMedia]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TillID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClerkID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MediaID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Quantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Amount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstSale] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastSale] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstSaleNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastSaleNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TipAmount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TipQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_EventTillClerkMedia] ADD CONSTRAINT [PK_stg__EventTillClerkMedia] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__EventTillClerkMedia] ON [stg].[NCR_EventTillClerkMedia]
GO

CREATE TABLE [stg].[NCR_SaleTransaction]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SaleID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SaleTransactionID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MediaID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreditCardTypeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Amount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TipAmount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DrawerIndex] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_SaleTransaction] ADD CONSTRAINT [PK_stg__SaleTransaction] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__SaleTransaction] ON [stg].[NCR_SaleTransaction]
GO

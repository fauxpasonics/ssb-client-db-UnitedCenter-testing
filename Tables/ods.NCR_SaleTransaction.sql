CREATE TABLE [ods].[NCR_SaleTransaction]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SaleID] [bigint] NULL,
[SaleTransactionID] [bigint] NULL,
[MediaID] [bigint] NULL,
[CreditCardTypeID] [bigint] NULL,
[Amount] [decimal] (18, 6) NULL,
[TipAmount] [decimal] (18, 6) NULL,
[DrawerIndex] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_SaleTransaction] ADD CONSTRAINT [PK_ods__SaleTransaction] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__SaleTransaction] ON [ods].[NCR_SaleTransaction]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_SaleTransaction] ([SaleID], [SaleTransactionID]) INCLUDE ([ETL__DeltaHashKey])
GO

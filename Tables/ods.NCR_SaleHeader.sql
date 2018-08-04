CREATE TABLE [ods].[NCR_SaleHeader]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SaleID] [bigint] NULL,
[SaleDate] [date] NULL,
[SaleNumber] [bigint] NULL,
[SeatDetails] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventID] [bigint] NULL,
[LocationID] [bigint] NULL,
[DepartmentID] [bigint] NULL,
[OrginizationID] [bigint] NULL,
[TerminalID] [bigint] NULL,
[MemberNumber] [bigint] NULL,
[TableNumber] [bigint] NULL,
[TransactionCount] [bigint] NULL,
[IsRefund] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClerkID] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_SaleHeader] ADD CONSTRAINT [PK_ods__SaleHeader] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__SaleHeader] ON [ods].[NCR_SaleHeader]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_SaleHeader] ([SaleID]) INCLUDE ([ETL__DeltaHashKey])
GO

CREATE TABLE [stg].[NCR_SaleHeader]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SaleID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SaleDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SaleNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SeatDetails] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DepartmentID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrginizationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminalID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TableNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransactionCount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsRefund] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClerkID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_SaleHeader] ADD CONSTRAINT [PK_stg__SaleHeader] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__SaleHeader] ON [stg].[NCR_SaleHeader]
GO

CREATE TABLE [stg].[NCR_EventCashOverShort]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[OrganizationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashSales] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreditSales] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherSales] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Tip] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashroomSales] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhysicalSales] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminalSales] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_EventCashOverShort] ADD CONSTRAINT [PK_stg__EventCashOverShort] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__EventCashOverShort] ON [stg].[NCR_EventCashOverShort]
GO

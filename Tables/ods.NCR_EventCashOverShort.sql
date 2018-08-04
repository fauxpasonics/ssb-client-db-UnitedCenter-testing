CREATE TABLE [ods].[NCR_EventCashOverShort]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[OrganizationID] [bigint] NULL,
[EventID] [bigint] NULL,
[LocationID] [bigint] NULL,
[CashSales] [decimal] (18, 6) NULL,
[CreditSales] [decimal] (18, 6) NULL,
[OtherSales] [decimal] (18, 6) NULL,
[Tip] [decimal] (18, 6) NULL,
[CashroomSales] [decimal] (18, 6) NULL,
[PhysicalSales] [decimal] (18, 6) NULL,
[TerminalSales] [decimal] (18, 6) NULL
)
GO
ALTER TABLE [ods].[NCR_EventCashOverShort] ADD CONSTRAINT [PK_ods__EventCashOverShort] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__EventCashOverShort] ON [ods].[NCR_EventCashOverShort]
GO

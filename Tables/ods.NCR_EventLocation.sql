CREATE TABLE [ods].[NCR_EventLocation]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[EventID] [bigint] NULL,
[Locationid] [bigint] NULL,
[CashCount] [decimal] (18, 6) NULL,
[CreditCount] [decimal] (18, 6) NULL,
[ClerkCount] [decimal] (18, 6) NULL,
[Status] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Adjusted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ManagerCountBased] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UnitType] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxLevel01] [bigint] NULL,
[TaxLevel02] [bigint] NULL,
[TaxLevel03] [bigint] NULL,
[TaxLevel04] [bigint] NULL,
[TaxLevel05] [bigint] NULL,
[TaxLevel06] [bigint] NULL,
[TaxLevel07] [bigint] NULL,
[TaxLevel08] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_EventLocation] ADD CONSTRAINT [PK_ods__NCR_EventLocation] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__NCR_EventLocation] ON [ods].[NCR_EventLocation]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_EventLocation] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

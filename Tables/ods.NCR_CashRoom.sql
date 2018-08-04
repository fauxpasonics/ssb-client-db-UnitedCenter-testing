CREATE TABLE [ods].[NCR_CashRoom]
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
[CashierID] [bigint] NULL,
[CashDrop] [decimal] (18, 6) NULL,
[CashFloat] [decimal] (18, 6) NULL,
[Created] [datetime] NULL,
[DropNumber] [decimal] (18, 6) NULL,
[DropIssue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DropStart] [datetime] NULL,
[DropEnd] [datetime] NULL,
[TempFloat] [decimal] (18, 6) NULL,
[Commited] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Temporary] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DayShift] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Reference] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[NCR_CashRoom] ADD CONSTRAINT [PK_ods__CashRoom] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__CashRoom] ON [ods].[NCR_CashRoom]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_CashRoom] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

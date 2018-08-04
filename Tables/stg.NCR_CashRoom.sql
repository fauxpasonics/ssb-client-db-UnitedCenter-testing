CREATE TABLE [stg].[NCR_CashRoom]
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
[CashierID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashDrop] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashFloat] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Created] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DropNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DropIssue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DropStart] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DropEnd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TempFloat] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Commited] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Temporary] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DayShift] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Reference] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_CashRoom] ADD CONSTRAINT [PK_stg__CashRoom] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__CashRoom] ON [stg].[NCR_CashRoom]
GO

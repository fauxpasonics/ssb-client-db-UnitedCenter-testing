CREATE TABLE [ods].[NCR_EventLocationTillFloat]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[EventID] [bigint] NULL,
[LocationID] [bigint] NULL,
[TillID] [bigint] NULL,
[CashFloat] [decimal] (18, 6) NULL,
[Created] [datetime] NULL,
[ClerkID] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_EventLocationTillFloat] ADD CONSTRAINT [PK_ods__EventLocationTillFloat] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__EventLocationTillFloat] ON [ods].[NCR_EventLocationTillFloat]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_EventLocationTillFloat] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

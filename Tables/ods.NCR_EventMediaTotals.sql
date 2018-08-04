CREATE TABLE [ods].[NCR_EventMediaTotals]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[OrgID] [bigint] NULL,
[EventID] [bigint] NULL,
[LocationID] [bigint] NULL,
[MediaNumber] [bigint] NULL,
[CardSubtype] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Entries] [decimal] (18, 6) NULL,
[Value] [decimal] (18, 6) NULL,
[TipAmount] [decimal] (18, 6) NULL
)
GO
ALTER TABLE [ods].[NCR_EventMediaTotals] ADD CONSTRAINT [PK_ods__EventMediaTotals] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__EventMediaTotals] ON [ods].[NCR_EventMediaTotals]
GO

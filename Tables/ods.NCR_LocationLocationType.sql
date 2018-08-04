CREATE TABLE [ods].[NCR_LocationLocationType]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LocationID] [bigint] NULL,
[LocationTypeID] [bigint] NULL,
[DefaultAdded] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[NCR_LocationLocationType] ADD CONSTRAINT [PK_ods__LocationLocationType] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__LocationLocationType] ON [ods].[NCR_LocationLocationType]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_LocationLocationType] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

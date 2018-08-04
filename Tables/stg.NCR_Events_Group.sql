CREATE TABLE [stg].[NCR_Events_Group]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [stg].[NCR_Events_Group] ADD CONSTRAINT [PK_stg__Events_Group] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__Events_Group] ON [stg].[NCR_Events_Group]
GO

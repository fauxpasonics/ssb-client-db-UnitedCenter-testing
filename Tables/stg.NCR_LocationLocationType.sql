CREATE TABLE [stg].[NCR_LocationLocationType]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationTypeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultAdded] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_LocationLocationType] ADD CONSTRAINT [PK_stg__LocationLocationType] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__LocationLocationType] ON [stg].[NCR_LocationLocationType]
GO

CREATE TABLE [stg].[NCR_CashroomGroup]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [stg].[NCR_CashroomGroup] ADD CONSTRAINT [PK_stg__CashroomGroup] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__CashroomGroup] ON [stg].[NCR_CashroomGroup]
GO

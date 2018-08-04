CREATE TABLE [ods].[NCR_CashroomGroup]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [ods].[NCR_CashroomGroup] ADD CONSTRAINT [PK_ods__CashroomGroup] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__CashroomGroup] ON [ods].[NCR_CashroomGroup]
GO

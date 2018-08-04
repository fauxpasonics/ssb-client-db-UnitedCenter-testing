CREATE TABLE [ods].[NCR_LocationType]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StockFamilyID] [bigint] NULL,
[TransferFromLocationID] [bigint] NULL,
[ItemDescriptions] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationID] [bigint] NULL,
[DepartmentID] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_LocationType] ADD CONSTRAINT [PK_ods__LocationType] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__LocationType] ON [ods].[NCR_LocationType]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_LocationType] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

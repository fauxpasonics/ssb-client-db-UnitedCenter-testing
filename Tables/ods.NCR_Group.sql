CREATE TABLE [ods].[NCR_Group]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DepartmentID] [bigint] NULL,
[IsDeleted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationID] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_Group] ADD CONSTRAINT [PK_ods__Group] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__Group] ON [ods].[NCR_Group]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_Group] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

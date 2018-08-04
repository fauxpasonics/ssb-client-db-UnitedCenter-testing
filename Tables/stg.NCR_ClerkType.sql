CREATE TABLE [stg].[NCR_ClerkType]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogicalID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Allowance] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreditLimit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DepartmentID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JobCodeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HourlyRate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDefaultCreated] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_ClerkType] ADD CONSTRAINT [PK_stg__ClerkType] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__ClerkType] ON [stg].[NCR_ClerkType]
GO

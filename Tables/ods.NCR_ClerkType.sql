CREATE TABLE [ods].[NCR_ClerkType]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Allowance] [decimal] (18, 6) NULL,
[CreditLimit] [decimal] (18, 6) NULL,
[DepartmentID] [bigint] NULL,
[JobCodeID] [bigint] NULL,
[OrganizationID] [bigint] NULL,
[HourlyRate] [decimal] (18, 6) NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDefaultCreated] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[NCR_ClerkType] ADD CONSTRAINT [PK_ods__ClerkType] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__ClerkType] ON [ods].[NCR_ClerkType]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_ClerkType] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

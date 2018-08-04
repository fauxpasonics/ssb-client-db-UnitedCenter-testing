CREATE TABLE [ods].[NCR_Clerk]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[FullName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClerkTypeID] [bigint] NULL,
[DepartmentID] [bigint] NULL,
[Password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneHome] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneOther] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Balance] [decimal] (18, 6) NULL,
[CreditLimit] [decimal] (18, 6) NULL,
[Notes] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JobCodeID] [bigint] NULL,
[PayRateID] [bigint] NULL,
[Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[TerminalDescription] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MinHours] [decimal] (18, 6) NULL,
[ClassificationID] [decimal] (18, 6) NULL,
[DateOfBirth] [datetime] NULL
)
GO
ALTER TABLE [ods].[NCR_Clerk] ADD CONSTRAINT [PK_ods__Clerk] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__Clerk] ON [ods].[NCR_Clerk]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_Clerk] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

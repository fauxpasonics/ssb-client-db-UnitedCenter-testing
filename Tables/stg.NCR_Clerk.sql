CREATE TABLE [stg].[NCR_Clerk]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogicalID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClerkTypeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DepartmentID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneHome] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneOther] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Balance] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreditLimit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Notes] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JobCodeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PayRateID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminalDescription] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MinHours] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClassificationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateOfBirth] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_Clerk] ADD CONSTRAINT [PK_stg__Clerk] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__Clerk] ON [stg].[NCR_Clerk]
GO

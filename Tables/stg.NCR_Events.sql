CREATE TABLE [stg].[NCR_Events]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogicalID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventTypeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStart] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeEnd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DeliveryLeadTimeDays] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProgressStateID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostedTime] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostedBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SuiteADOClosed] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SuiteADOPrinted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashroomClosed] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RowState] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrintChargeableOnly] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Budget] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WantDisplay] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LCSGenerated] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PriceLevelProfileID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GateOpens] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateAdded] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateEdited] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DepartmentID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Notes] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReferenceID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_Events] ADD CONSTRAINT [PK_stg__Events] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__Events] ON [stg].[NCR_Events]
GO

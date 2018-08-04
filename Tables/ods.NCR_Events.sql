CREATE TABLE [ods].[NCR_Events]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventTypeID] [bigint] NULL,
[TimeStart] [datetime] NULL,
[TimeEnd] [datetime] NULL,
[DeliveryLeadTimeDays] [bigint] NULL,
[ProgressStateID] [bigint] NULL,
[PostedTime] [datetime] NULL,
[PostedBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SuiteADOClosed] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SuiteADOPrinted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashroomClosed] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RowState] [bigint] NULL,
[PrintChargeableOnly] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Budget] [decimal] (18, 6) NULL,
[WantDisplay] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LCSGenerated] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PriceLevelProfileID] [bigint] NULL,
[GateOpens] [datetime] NULL,
[DateAdded] [datetime] NULL,
[DateEdited] [datetime] NULL,
[OrganizationID] [bigint] NULL,
[DepartmentID] [bigint] NULL,
[Notes] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReferenceID] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_Events] ADD CONSTRAINT [PK_ods__Events] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__Events] ON [ods].[NCR_Events]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_Events] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

CREATE TABLE [ods].[NCR_Till]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[LocationID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultPriceLevelID] [bigint] NULL,
[KeypadID] [bigint] NULL,
[JournalModeID] [bigint] NULL,
[ReceiptModeID] [bigint] NULL,
[DrawerModeID] [bigint] NULL,
[MagStripe] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExclusiveUpdate] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminalTypeID] [bigint] NULL,
[Version] [bigint] NULL,
[MemoryTotal] [bigint] NULL,
[MemoryAvailable] [bigint] NULL,
[Snoopy] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAMFile] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAMVersion] [bigint] NULL,
[KitchenModeID] [bigint] NULL,
[SleepModeID] [bigint] NULL,
[DB_IPAddress] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DB_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DB_UserName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DB_Password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTP_Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTP_UserName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTP_Password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DoorDelay] [bigint] NULL,
[ForcedPLUs] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OverrideRounding] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RoundingMode] [bigint] NULL,
[RoundingAmount] [bigint] NULL,
[SeatAssignmentID] [bigint] NULL,
[SecurityCode] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShowAllBanquetLocations] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationOverrideID] [bigint] NULL,
[POSLogicVersion] [bigint] NULL,
[SerialNumber] [bigint] NULL,
[CCDailyLimit] [bigint] NULL,
[MonerisECRID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExcludeOfflineAlert] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirmwareUpgradeID] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_Till] ADD CONSTRAINT [PK_ods__Till] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__Till] ON [ods].[NCR_Till]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_Till] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

CREATE TABLE [stg].[NCR_Till]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogicalID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultPriceLevelID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeypadID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JournalModeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReceiptModeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DrawerModeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MagStripe] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExclusiveUpdate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminalTypeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Version] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemoryTotal] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemoryAvailable] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Snoopy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAMFile] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAMVersion] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KitchenModeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SleepModeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DB_IPAddress] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DB_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DB_UserName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DB_Password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTP_Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTP_UserName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTP_Password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DoorDelay] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ForcedPLUs] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OverrideRounding] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RoundingMode] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RoundingAmount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SeatAssignmentID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecurityCode] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShowAllBanquetLocations] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationOverrideID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POSLogicVersion] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SerialNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCDailyLimit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MonerisECRID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExcludeOfflineAlert] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirmwareUpgradeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_Till] ADD CONSTRAINT [PK_stg__Till] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__Till] ON [stg].[NCR_Till]
GO

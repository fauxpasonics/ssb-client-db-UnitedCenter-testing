CREATE TABLE [ods].[NCR_Location]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[CopiedLogicalID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[_GLDivision] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[_DeliveryAddress] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLookupMode] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DataInputMode] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DataInputMask] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MasterTillID] [bigint] NULL,
[MasterWorkstationID] [bigint] NULL,
[MasterWorkstationName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransferFromLocationID] [bigint] NULL,
[ClerkMode] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IdleMode] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IdleDelay] [bigint] NULL,
[Scrollable] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ScrollRate] [bigint] NULL,
[CashHigh] [bigint] NULL,
[ShowRunningTotal] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ItemOverride] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InEscapeSequence] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OutEscapeSequence] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrintGroupHeader] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DataAccount] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultPriceLevelID] [bigint] NULL,
[StockFamilyID] [bigint] NULL,
[HasWorksheet] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Retail] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LongDescription] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Warehouse] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsVending] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsPortable] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransferFromLocationID2] [bigint] NULL,
[EnableTip] [bigint] NULL,
[SeatAssignmentID] [bigint] NULL,
[ReportGroupID] [bigint] NULL,
[PromoItemID] [bigint] NULL,
[TextParameters] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastSaleDate] [datetime] NULL,
[CompulsoryPriceLevels] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrintStandsheet] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DrinkMode] [bigint] NULL,
[DrinkRuleID] [bigint] NULL,
[DrinkDailyLimit] [bigint] NULL,
[DrinkHourlyLimit] [bigint] NULL,
[ForcedPLUs] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OverrideRounding] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RoundingMode] [bigint] NULL,
[RoundingAmount] [bigint] NULL,
[EventTypeID] [bigint] NULL,
[IsSuiteCatering] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DrinkSaleLimit] [bigint] NULL,
[PrintPLU] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MasterTillLogicalID] [bigint] NULL,
[MerchantID] [bigint] NULL,
[Tokens] [bigint] NULL,
[CalculationType] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DepartmentID] [bigint] NULL,
[FineDining] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Covers] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DisableAlchohol] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsBanquet] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RetailPriceLevelID] [bigint] NULL,
[ManagerTillLogicalID] [bigint] NULL,
[BanquetScreenDefault] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationLogon] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeOffset] [decimal] (18, 6) NULL,
[IdleTextMessageID] [bigint] NULL,
[HeaderTextMessageID] [bigint] NULL,
[TrailerTextMessageID] [bigint] NULL,
[TableFirstMode] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TableSeatMode] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TableRestrictedMode] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TipWarning] [bigint] NULL,
[TableLocking] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ServiceChargeID] [bigint] NULL,
[TableExists] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastOfflineCCProcess] [datetime] NULL,
[StockFamilyCount] [int] NULL,
[ShowRunningTotalMulti] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShowRunningTotalTouch] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerDisplayShowOfflineStatus] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserForcedPLU] [bigint] NULL,
[UserForcedPLU2] [bigint] NULL,
[UserForcedPLU3] [bigint] NULL,
[ConditionalPLU] [bigint] NULL,
[TableLayoutID] [bigint] NULL,
[AdditionalDataEscapeSequence] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UnprintedTableOptions] [int] NULL,
[UnprintedTableFlashPeriod] [int] NULL,
[StockFamilyIDToIgnore] [int] NULL,
[DontPrintReportsWhenOpenOrders] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DisplayTableLayoutByDefault] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TablePreAuthAmount] [decimal] (18, 6) NULL,
[TableNameCCDetailsSelection] [bigint] NULL,
[TableNameMode] [bigint] NULL,
[AutoAuths] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AuthAdjustPercent] [decimal] (18, 6) NULL
)
GO
ALTER TABLE [ods].[NCR_Location] ADD CONSTRAINT [PK_ods__Location] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__Location] ON [ods].[NCR_Location]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_Location] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

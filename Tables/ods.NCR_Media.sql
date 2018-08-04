CREATE TABLE [ods].[NCR_Media]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashTypeID] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Option1ExtraDataID] [bigint] NULL,
[Option2ExtraDataID] [bigint] NULL,
[IsCreditCard] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsIncludedInCashCount] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsCoupon] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsSystem] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsExcludedInCCMaintenance] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrintCustomerCopy] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[NCR_Media] ADD CONSTRAINT [PK_ods__Media] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__Media] ON [ods].[NCR_Media]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_Media] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

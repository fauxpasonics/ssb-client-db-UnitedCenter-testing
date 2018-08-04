CREATE TABLE [stg].[NCR_Media]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogicalID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashTypeID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Option1ExtraDataID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Option2ExtraDataID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsCreditCard] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsIncludedInCashCount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsCoupon] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsSystem] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsExcludedInCCMaintenance] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrintCustomerCopy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_Media] ADD CONSTRAINT [PK_stg__Media] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__Media] ON [stg].[NCR_Media]
GO

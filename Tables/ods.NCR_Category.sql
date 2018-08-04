CREATE TABLE [ods].[NCR_Category]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[LogicalID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GroupID] [bigint] NULL,
[Link1Type] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Link1ID] [bigint] NULL,
[Link2Type] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Link2ID] [bigint] NULL,
[AutoAdd] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fractional] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NonSale] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Instruction] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultModifierID] [bigint] NULL,
[ColourList] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SizeList] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsLocked] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultStockID] [bigint] NULL,
[RuleID] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_Category] ADD CONSTRAINT [PK_ods__Category] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__Category] ON [ods].[NCR_Category]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_Category] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO

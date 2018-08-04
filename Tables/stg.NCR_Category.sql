CREATE TABLE [stg].[NCR_Category]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogicalID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GroupID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Link1Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Link1ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Link2Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Link2ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AutoAdd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fractional] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NonSale] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Instruction] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultModifierID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ColourList] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SizeList] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsLocked] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultStockID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RuleID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_Category] ADD CONSTRAINT [PK_stg__Category] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__Category] ON [stg].[NCR_Category]
GO

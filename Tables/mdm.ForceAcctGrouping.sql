CREATE TABLE [mdm].[ForceAcctGrouping]
(
[DimCustomerid] [int] NULL,
[GroupingID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__ForceAcct__Creat__62108194] DEFAULT (getdate()),
[UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__ForceAcct__Updat__6304A5CD] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PriorGrouping] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

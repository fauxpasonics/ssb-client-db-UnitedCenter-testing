CREATE TABLE [mdm].[ForceHouseholdGrouping]
(
[DimCustomerId] [int] NULL,
[GroupingID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__ForceHous__Creat__68BD7F23] DEFAULT (getdate()),
[UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__ForceHous__Updat__69B1A35C] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PriorGrouping] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
